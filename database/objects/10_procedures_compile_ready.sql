-- Compile-ready standalone procedures for the Steam Nexus APEX schema.
-- These are wrappers/standalone versions adjusted for identity columns.

CREATE OR REPLACE PROCEDURE accept_friend_request(
    p_user_id NUMBER,
    p_friend_id NUMBER
) IS
BEGIN
    IF p_user_id = p_friend_id THEN
        RAISE_APPLICATION_ERROR(-20401, 'A user cannot be friends with himself.');
    END IF;

    INSERT INTO friends (user_id, friend_id)
    SELECT p_user_id, p_friend_id
      FROM dual
     WHERE NOT EXISTS (
           SELECT 1
             FROM friends
            WHERE user_id = p_user_id
              AND friend_id = p_friend_id
     );

    INSERT INTO friends (user_id, friend_id)
    SELECT p_friend_id, p_user_id
      FROM dual
     WHERE NOT EXISTS (
           SELECT 1
             FROM friends
            WHERE user_id = p_friend_id
              AND friend_id = p_user_id
     );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE add_funds(
    p_user_id NUMBER,
    p_fund NUMBER
) IS
    v_wallet_id wallets.wallet_id%TYPE;
BEGIN
    IF p_fund <= 0 THEN
        RAISE_APPLICATION_ERROR(-20402, 'Fund amount must be positive.');
    END IF;

    BEGIN
        SELECT wallet_id
          INTO v_wallet_id
          FROM (
              SELECT wallet_id
                FROM wallets
               WHERE user_id = p_user_id
               ORDER BY updated_at DESC, wallet_id DESC
          )
         WHERE ROWNUM = 1;

        UPDATE wallets
           SET balance = balance + p_fund,
               updated_at = CURRENT_TIMESTAMP
         WHERE wallet_id = v_wallet_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO wallets (user_id, currency, balance, updated_at)
            VALUES (p_user_id, 'USD', p_fund, CURRENT_TIMESTAMP);
    END;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END add_funds;
/

CREATE OR REPLACE PROCEDURE add_game(
    p_developer_id NUMBER,
    p_title VARCHAR2,
    p_price NUMBER,
    p_age_rating VARCHAR2,
    p_description VARCHAR2
) IS
BEGIN
    INSERT INTO games (developer_id, title, price, release_date, age_rating, description)
    VALUES (p_developer_id, p_title, p_price, CURRENT_TIMESTAMP, p_age_rating, p_description);

    COMMIT;
END add_game;
/

CREATE OR REPLACE PROCEDURE award_achievement(
    p_user_id NUMBER,
    p_achievement_ids PKG_STORE_PURCHASE.t_id_list
) IS
    v_inserted NUMBER := 0;
BEGIN
    IF p_achievement_ids IS NULL OR p_achievement_ids.COUNT = 0 THEN
        RETURN;
    END IF;

    FOR i IN 1 .. p_achievement_ids.COUNT LOOP
        IF p_achievement_ids(i) IS NOT NULL THEN
            INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
            SELECT p_user_id, p_achievement_ids(i), CURRENT_TIMESTAMP
              FROM dual
             WHERE NOT EXISTS (
                   SELECT 1
                     FROM user_achievements ua
                    WHERE ua.user_id = p_user_id
                      AND ua.achievement_id = p_achievement_ids(i)
             );

            v_inserted := v_inserted + SQL%ROWCOUNT;
        END IF;
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Achievements awarded: ' || v_inserted);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE PROCEDURE award_random_achievement(
    p_user_id NUMBER,
    p_game_id NUMBER
) IS
    v_ach_id achievements.achievement_id%TYPE;
BEGIN
    SELECT achievement_id
      INTO v_ach_id
      FROM (
          SELECT achievement_id
            FROM achievements
           WHERE game_id = p_game_id
             AND NOT EXISTS (
                 SELECT 1
                   FROM user_achievements ua
                  WHERE ua.user_id = p_user_id
                    AND ua.achievement_id = achievements.achievement_id
             )
           ORDER BY DBMS_RANDOM.VALUE
      )
     WHERE ROWNUM = 1;

    INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
    VALUES (p_user_id, v_ach_id, CURRENT_TIMESTAMP);

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('User already has all achievements for this game.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE PROCEDURE create_user(
    p_username users.username%TYPE,
    p_email users.email%TYPE,
    p_password VARCHAR2
) IS
    v_user_id users.user_id%TYPE;
BEGIN
    INSERT INTO users (username, email, password_hash, created_at)
    VALUES (
        p_username,
        p_email,
        LOWER(RAWTOHEX(STANDARD_HASH(p_password, 'SHA256'))),
        CURRENT_TIMESTAMP
    )
    RETURNING user_id INTO v_user_id;

    INSERT INTO wallets (user_id, currency, balance, updated_at)
    VALUES (v_user_id, 'USD', 0, CURRENT_TIMESTAMP);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE PROCEDURE delete_review(
    p_review_id NUMBER,
    p_user_id NUMBER
) IS
BEGIN
    DELETE FROM reviews
     WHERE review_id = p_review_id
       AND user_id = p_user_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20403, 'Review not found or user is not the author.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE PROCEDURE del_user(
    p_user_id IN NUMBER
) IS
    v_user_name users.username%TYPE;
BEGIN
    SELECT username
      INTO v_user_name
      FROM users
     WHERE user_id = p_user_id;

    DELETE FROM users
     WHERE user_id = p_user_id;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('User "' || v_user_name || '" was deleted');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20404, 'User not found.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END del_user;
/

CREATE OR REPLACE PROCEDURE end_session(
    p_user_id NUMBER
) IS
BEGIN
    UPDATE sessions
       SET end_time = CURRENT_TIMESTAMP
     WHERE user_id = p_user_id
       AND end_time IS NULL;

    COMMIT;
END end_session;
/

CREATE OR REPLACE PROCEDURE gift_game(
    p_sender_id NUMBER,
    p_receiver_id NUMBER,
    p_game_ids PKG_STORE_PURCHASE.t_id_list
) IS
    v_wallet_id wallets.wallet_id%TYPE;
    v_balance NUMBER;
    v_currency wallets.currency%TYPE;
    v_total_price NUMBER := 0;
    v_price NUMBER;
    v_owned_count NUMBER;

    FUNCTION convert_price(
        p_price IN NUMBER,
        p_currency IN VARCHAR2
    ) RETURN NUMBER IS
    BEGIN
        RETURN ROUND(
            CASE UPPER(NVL(p_currency, 'USD'))
                WHEN 'EUR' THEN p_price * 0.85
                WHEN 'KZT' THEN p_price * 471.86
                WHEN 'GBP' THEN p_price * 0.74
                WHEN 'JPY' THEN p_price * 159.17
                ELSE p_price
            END,
            2
        );
    END convert_price;
BEGIN
    IF p_game_ids IS NULL OR p_game_ids.COUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20405, 'Gift list is empty.');
    END IF;

    SELECT wallet_id, balance, currency
      INTO v_wallet_id, v_balance, v_currency
      FROM (
          SELECT wallet_id, balance, currency
            FROM wallets
           WHERE user_id = p_sender_id
           ORDER BY updated_at DESC, wallet_id DESC
      )
     WHERE ROWNUM = 1;

    FOR i IN 1 .. p_game_ids.COUNT LOOP
        IF p_game_ids(i) IS NOT NULL THEN
            SELECT price
              INTO v_price
              FROM games
             WHERE game_id = p_game_ids(i);

            SELECT COUNT(*)
              INTO v_owned_count
              FROM library
             WHERE user_id = p_receiver_id
               AND game_id = p_game_ids(i);

            IF v_owned_count = 0 THEN
                v_total_price := v_total_price + convert_price(v_price, v_currency);
            END IF;
        END IF;
    END LOOP;

    IF v_total_price <= 0 THEN
        RAISE_APPLICATION_ERROR(-20406, 'Receiver already owns all selected games.');
    END IF;

    IF v_balance < v_total_price THEN
        RAISE_APPLICATION_ERROR(-20407, 'Insufficient funds to send this gift.');
    END IF;

    UPDATE wallets
       SET balance = balance - v_total_price,
           updated_at = CURRENT_TIMESTAMP
     WHERE wallet_id = v_wallet_id;

    FOR i IN 1 .. p_game_ids.COUNT LOOP
        IF p_game_ids(i) IS NOT NULL THEN
            INSERT INTO library (user_id, game_id, added_date)
            SELECT p_receiver_id, p_game_ids(i), CURRENT_TIMESTAMP
              FROM dual
             WHERE NOT EXISTS (
                   SELECT 1
                     FROM library
                    WHERE user_id = p_receiver_id
                      AND game_id = p_game_ids(i)
             );
        END IF;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE PROCEDURE purchase_game(
    p_user_id NUMBER,
    p_game_ids PKG_STORE_PURCHASE.t_id_list
) IS
BEGIN
    PKG_STORE_PURCHASE.purchase_game(p_user_id, p_game_ids);
END;
/

CREATE OR REPLACE PROCEDURE refund_purchase(
    p_user_id IN NUMBER,
    p_purchase_id IN NUMBER
) IS
BEGIN
    PKG_STORE_PURCHASE.refund_purchase(p_user_id, p_purchase_id);
END;
/

CREATE OR REPLACE PROCEDURE "REMOVE_GAME_FROM_LIBRARY"(
    p_user_id users.user_id%TYPE,
    p_game_id games.game_id%TYPE
) IS
BEGIN
    DELETE FROM library
     WHERE user_id = p_user_id
       AND game_id = p_game_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20408, 'User does not own this game.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END "REMOVE_GAME_FROM_LIBRARY";
/

CREATE OR REPLACE PROCEDURE "SEND_MESSAGE"(
    p_username1 VARCHAR2,
    p_username2 VARCHAR2,
    p_text VARCHAR2,
    p_user_name VARCHAR2,
    p_password VARCHAR2
) IS
    v_sender_id users.user_id%TYPE;
    v_receiver_id users.user_id%TYPE;
BEGIN
    SELECT user_id
      INTO v_sender_id
      FROM users
     WHERE UPPER(username) = UPPER(p_user_name)
       AND LOWER(password_hash) = LOWER(RAWTOHEX(STANDARD_HASH(p_password, 'SHA256')));

    IF p_username1 IS NOT NULL AND UPPER(p_username1) <> UPPER(p_user_name) THEN
        RAISE_APPLICATION_ERROR(-20409, 'Authenticated user does not match sender username.');
    END IF;

    SELECT user_id
      INTO v_receiver_id
      FROM users
     WHERE UPPER(username) = UPPER(p_username2);

    INSERT INTO messages (sender_id, receiver_id, content, sent_at, is_read)
    VALUES (v_sender_id, v_receiver_id, p_text, CURRENT_TIMESTAMP, 0);

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20410, 'Sender credentials or receiver username are invalid.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END "SEND_MESSAGE";
/

CREATE OR REPLACE PROCEDURE start_session(
    p_user_id NUMBER,
    p_game_id NUMBER
) IS
BEGIN
    INSERT INTO sessions (user_id, game_id, start_time, end_time)
    VALUES (p_user_id, p_game_id, CURRENT_TIMESTAMP, NULL);

    COMMIT;
END start_session;
/

CREATE OR REPLACE PROCEDURE unfriend_user(
    p_user_id NUMBER,
    p_friend_id NUMBER
) IS
BEGIN
    DELETE FROM friends
     WHERE (user_id = p_user_id AND friend_id = p_friend_id)
        OR (user_id = p_friend_id AND friend_id = p_user_id);

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_game_price(
    p_game_id NUMBER,
    p_new_price NUMBER
) IS
BEGIN
    IF p_new_price < 0 THEN
        RAISE_APPLICATION_ERROR(-20411, 'Price cannot be negative.');
    END IF;

    UPDATE games
       SET price = p_new_price
     WHERE game_id = p_game_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20412, 'Game not found.');
    END IF;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE "UPDATE_USER"(
    p_user_name VARCHAR2,
    p_password VARCHAR2,
    p_new_user_name VARCHAR2,
    p_new_password VARCHAR2,
    p_new_email VARCHAR2
) IS
    v_id users.user_id%TYPE;
BEGIN
    SELECT user_id
      INTO v_id
      FROM users
     WHERE UPPER(username) = UPPER(p_user_name)
       AND LOWER(password_hash) = LOWER(RAWTOHEX(STANDARD_HASH(p_password, 'SHA256')));

    UPDATE users
       SET username = COALESCE(NULLIF(TRIM(p_new_user_name), ''), username),
           password_hash = CASE
                               WHEN NULLIF(TRIM(p_new_password), '') IS NOT NULL
                               THEN LOWER(RAWTOHEX(STANDARD_HASH(p_new_password, 'SHA256')))
                               ELSE password_hash
                           END,
           email = COALESCE(NULLIF(TRIM(p_new_email), ''), email)
     WHERE user_id = v_id;

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20413, 'Access denied: wrong username or password.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END "UPDATE_USER";
/

CREATE OR REPLACE PROCEDURE "WRITE_REVIEW"(
    p_user_id NUMBER,
    p_game_id NUMBER,
    p_review VARCHAR2,
    p_type VARCHAR2
) IS
    v_owned_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_owned_count
      FROM library
     WHERE user_id = p_user_id
       AND game_id = p_game_id;

    IF v_owned_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20414, 'User does not own this game.');
    END IF;

    INSERT INTO reviews (user_id, game_id, review_type, review_text, review_date)
    VALUES (p_user_id, p_game_id, p_type, p_review, CURRENT_TIMESTAMP);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END "WRITE_REVIEW";
/
