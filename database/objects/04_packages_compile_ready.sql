CREATE OR REPLACE PACKAGE pkg_achievements AS
    PROCEDURE start_session(p_user_id IN NUMBER, p_game_id IN NUMBER);
    PROCEDURE end_session(p_user_id IN NUMBER);
    PROCEDURE award_achievement(p_user_id IN NUMBER, p_game_id IN NUMBER);
    PROCEDURE award_random_achievement(p_user_id IN NUMBER, p_achievement_id IN NUMBER);

    FUNCTION get_achievement_progress(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN NUMBER;
    FUNCTION get_achievement_tier(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_latest_achievement(p_user_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_user_achievement_count(p_user_id IN NUMBER) RETURN NUMBER;
    FUNCTION get_player_tier(p_user_id IN NUMBER) RETURN VARCHAR2;
END pkg_achievements;
/

CREATE OR REPLACE PACKAGE BODY pkg_achievements AS
    PROCEDURE start_session(p_user_id IN NUMBER, p_game_id IN NUMBER) IS
    BEGIN
        INSERT INTO sessions (user_id, game_id, start_time)
        VALUES (p_user_id, p_game_id, CURRENT_TIMESTAMP);
    END start_session;

    PROCEDURE end_session(p_user_id IN NUMBER) IS
    BEGIN
        UPDATE sessions
           SET end_time = CURRENT_TIMESTAMP
         WHERE user_id = p_user_id
           AND end_time IS NULL;
    END end_session;

    PROCEDURE award_achievement(p_user_id IN NUMBER, p_game_id IN NUMBER) IS
    BEGIN
        INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
        SELECT p_user_id, achievement_id, CURRENT_TIMESTAMP
          FROM achievements a
         WHERE a.game_id = p_game_id
           AND NOT EXISTS (
                   SELECT 1
                     FROM user_achievements ua
                    WHERE ua.user_id = p_user_id
                      AND ua.achievement_id = a.achievement_id
               )
           AND ROWNUM = 1;
    END award_achievement;

    PROCEDURE award_random_achievement(p_user_id IN NUMBER, p_achievement_id IN NUMBER) IS
    BEGIN
        INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
        VALUES (p_user_id, p_achievement_id, CURRENT_TIMESTAMP);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            NULL;
    END award_random_achievement;

    FUNCTION get_achievement_progress(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN NUMBER IS
        v_total NUMBER;
        v_unlocked NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_total
          FROM achievements
         WHERE game_id = p_game_id;

        SELECT COUNT(ua.achievement_id)
          INTO v_unlocked
          FROM user_achievements ua
          JOIN achievements a ON a.achievement_id = ua.achievement_id
         WHERE ua.user_id = p_user_id
           AND a.game_id = p_game_id;

        IF v_total = 0 THEN
            RETURN 0;
        END IF;

        RETURN ROUND((v_unlocked / v_total) * 100);
    END get_achievement_progress;

    FUNCTION get_achievement_tier(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN VARCHAR2 IS
        v_progress NUMBER;
    BEGIN
        v_progress := get_achievement_progress(p_user_id, p_game_id);

        IF v_progress >= 100 THEN
            RETURN 'Platinum';
        ELSIF v_progress >= 70 THEN
            RETURN 'Gold';
        ELSIF v_progress >= 40 THEN
            RETURN 'Silver';
        ELSE
            RETURN 'Bronze';
        END IF;
    END get_achievement_tier;

    FUNCTION get_latest_achievement(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_title achievements.title%TYPE;
    BEGIN
        SELECT title
          INTO v_title
          FROM (
              SELECT a.title
                FROM user_achievements ua
                JOIN achievements a ON a.achievement_id = ua.achievement_id
               WHERE ua.user_id = p_user_id
               ORDER BY ua.unlocked_at DESC NULLS LAST, ua.achievement_id DESC
          )
         WHERE ROWNUM = 1;

        RETURN v_title;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'No achievements yet';
    END get_latest_achievement;

    FUNCTION get_user_achievement_count(p_user_id IN NUMBER) RETURN NUMBER IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM user_achievements
         WHERE user_id = p_user_id;

        RETURN v_count;
    END get_user_achievement_count;

    FUNCTION get_player_tier(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_count NUMBER;
    BEGIN
        v_count := get_user_achievement_count(p_user_id);

        IF v_count > 100 THEN
            RETURN 'Elite';
        ELSIF v_count > 50 THEN
            RETURN 'Veteran';
        ELSIF v_count > 10 THEN
            RETURN 'Gamer';
        ELSE
            RETURN 'Newbie';
        END IF;
    END get_player_tier;
END pkg_achievements;
/

CREATE OR REPLACE PACKAGE pkg_library_games AS
    PROCEDURE add_game(
        p_developer_id NUMBER,
        p_title VARCHAR2,
        p_price NUMBER,
        p_age_rating VARCHAR2,
        p_description VARCHAR2
    );

    PROCEDURE remove_game_from_library(
        p_user_id users.user_id%TYPE,
        p_game_id games.game_id%TYPE
    );

    PROCEDURE write_review(
        p_user_id NUMBER,
        p_game_id NUMBER,
        p_review VARCHAR2,
        p_type VARCHAR2
    );

    PROCEDURE delete_review(
        p_review_id NUMBER,
        p_user_id NUMBER
    );

    FUNCTION recommend_game(p_user_id NUMBER) RETURN VARCHAR2;
    FUNCTION get_game_popularity(p_game_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_favorite_category(p_user_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_category_name(p_cat_id IN NUMBER) RETURN VARCHAR2;
END pkg_library_games;
/

CREATE OR REPLACE PACKAGE BODY pkg_library_games AS
    PROCEDURE add_game(
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

    PROCEDURE remove_game_from_library(
        p_user_id users.user_id%TYPE,
        p_game_id games.game_id%TYPE
    ) AS
        v_owned_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_owned_count
          FROM library
         WHERE user_id = p_user_id
           AND game_id = p_game_id;

        IF v_owned_count = 0 THEN
            RETURN;
        END IF;

        DELETE FROM library
         WHERE user_id = p_user_id
           AND game_id = p_game_id;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END remove_game_from_library;

    PROCEDURE write_review(
        p_user_id NUMBER,
        p_game_id NUMBER,
        p_review VARCHAR2,
        p_type VARCHAR2
    ) AS
        v_owned_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_owned_count
          FROM library
         WHERE user_id = p_user_id
           AND game_id = p_game_id;

        IF v_owned_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20201, 'User does not own this game.');
        END IF;

        INSERT INTO reviews (user_id, game_id, review_type, review_text, review_date)
        VALUES (p_user_id, p_game_id, p_type, p_review, CURRENT_TIMESTAMP);

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END write_review;

    PROCEDURE delete_review(
        p_review_id NUMBER,
        p_user_id NUMBER
    ) IS
    BEGIN
        DELETE FROM reviews
         WHERE review_id = p_review_id
           AND user_id = p_user_id;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20202, 'Review not found or user is not the author.');
        END IF;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END delete_review;

    FUNCTION recommend_game(p_user_id NUMBER) RETURN VARCHAR2 IS
        v_category categories.category_name%TYPE;
        v_game_name games.title%TYPE;
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM library
         WHERE user_id = p_user_id;

        IF v_count = 0 THEN
            RETURN 'There is not enough data for a recommendation';
        END IF;

        SELECT category_name
          INTO v_category
          FROM (
              SELECT c.category_name, COUNT(*) AS cnt
                FROM categories c
                JOIN game_categories gc ON gc.category_id = c.category_id
                JOIN library l ON l.game_id = gc.game_id
               WHERE l.user_id = p_user_id
               GROUP BY c.category_name
               ORDER BY cnt DESC
          )
         WHERE ROWNUM = 1;

        SELECT title
          INTO v_game_name
          FROM (
              SELECT g.title
                FROM games g
                JOIN game_categories gc ON gc.game_id = g.game_id
                JOIN categories c ON c.category_id = gc.category_id
               WHERE c.category_name = v_category
                 AND NOT EXISTS (
                         SELECT 1
                           FROM library l
                          WHERE l.user_id = p_user_id
                            AND l.game_id = g.game_id
                     )
               ORDER BY DBMS_RANDOM.VALUE
          )
         WHERE ROWNUM = 1;

        RETURN 'Recommended game is: ' || v_game_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'No available games to recommend in your favorite category';
        WHEN OTHERS THEN
            RETURN 'Recommendation error: ' || SQLERRM;
    END recommend_game;

    FUNCTION get_game_popularity(p_game_id IN NUMBER) RETURN VARCHAR2 IS
        v_buyers NUMBER;
    BEGIN
        SELECT COUNT(DISTINCT p.user_id)
          INTO v_buyers
          FROM purchases p
          JOIN purchases_item pi ON pi.purchase_id = p.purchase_id
         WHERE pi.game_id = p_game_id
           AND LOWER(p.status) = 'completed';

        IF v_buyers > 1000 THEN
            RETURN 'Bestseller';
        ELSIF v_buyers > 100 THEN
            RETURN 'Trending';
        ELSIF v_buyers > 0 THEN
            RETURN 'Niche Title';
        ELSE
            RETURN 'New Release / Hidden Gem';
        END IF;
    END get_game_popularity;

    FUNCTION get_favorite_category(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_category_name categories.category_name%TYPE;
    BEGIN
        SELECT cat_out
          INTO v_category_name
          FROM (
              SELECT c.category_name AS cat_out, COUNT(s.session_id) AS play_count
                FROM sessions s
                JOIN games g ON g.game_id = s.game_id
                JOIN game_categories gc ON gc.game_id = g.game_id
                JOIN categories c ON c.category_id = gc.category_id
               WHERE s.user_id = p_user_id
               GROUP BY c.category_name
               ORDER BY play_count DESC
          )
         WHERE ROWNUM = 1;

        RETURN v_category_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'No sessions yet';
        WHEN OTHERS THEN
            RETURN 'Error: ' || SQLERRM;
    END get_favorite_category;

    FUNCTION get_category_name(p_cat_id IN NUMBER) RETURN VARCHAR2 IS
        v_name categories.category_name%TYPE;
    BEGIN
        SELECT category_name
          INTO v_name
          FROM categories
         WHERE category_id = p_cat_id;

        RETURN v_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'Unknown';
    END get_category_name;
END pkg_library_games;
/

CREATE OR REPLACE PACKAGE pkg_social_chat AS
    PROCEDURE send_message(
        p_user_id NUMBER,
        p_game_id NUMBER
    );

    PROCEDURE send_message(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_content CLOB
    );

    PROCEDURE accept_friend_request(p_user_id IN NUMBER, p_friend_id IN NUMBER);
    PROCEDURE unfriend_user(p_user_id IN NUMBER, p_friend_id IN NUMBER);

    FUNCTION get_chat_preview(p_user_id IN NUMBER, p_chat_partner_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_last_message_content(p_user1_id IN NUMBER, p_user2_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION get_unread_summary(p_user_id IN NUMBER) RETURN VARCHAR2;
END pkg_social_chat;
/

CREATE OR REPLACE PACKAGE BODY pkg_social_chat AS
    PROCEDURE send_message(
        p_user_id NUMBER,
        p_game_id NUMBER
    ) IS
    BEGIN
        INSERT INTO messages (sender_id, content, sent_at, is_read)
        VALUES (p_user_id, 'System: User joined game ' || p_game_id, CURRENT_TIMESTAMP, 0);
    END send_message;

    PROCEDURE send_message(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_content CLOB
    ) IS
        v_friend_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_friend_count
          FROM friends
         WHERE user_id = p_sender_id
           AND friend_id = p_receiver_id;

        IF v_friend_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20301, 'Users are not friends.');
        END IF;

        INSERT INTO messages (sender_id, receiver_id, content, sent_at, is_read)
        VALUES (p_sender_id, p_receiver_id, p_content, CURRENT_TIMESTAMP, 0);
    END send_message;

    PROCEDURE accept_friend_request(p_user_id IN NUMBER, p_friend_id IN NUMBER) IS
    BEGIN
        IF p_user_id = p_friend_id THEN
            RAISE_APPLICATION_ERROR(-20302, 'A user cannot be friends with himself.');
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
    END accept_friend_request;

    PROCEDURE unfriend_user(p_user_id IN NUMBER, p_friend_id IN NUMBER) IS
    BEGIN
        DELETE FROM friends
         WHERE (user_id = p_user_id AND friend_id = p_friend_id)
            OR (user_id = p_friend_id AND friend_id = p_user_id);
    END unfriend_user;

    FUNCTION get_chat_preview(p_user_id IN NUMBER, p_chat_partner_id IN NUMBER) RETURN VARCHAR2 IS
        v_preview VARCHAR2(4000);
    BEGIN
        SELECT preview
          INTO v_preview
          FROM (
              SELECT DBMS_LOB.SUBSTR(content, 4000, 1) AS preview
                FROM messages
               WHERE (sender_id = p_user_id AND receiver_id = p_chat_partner_id)
                  OR (sender_id = p_chat_partner_id AND receiver_id = p_user_id)
               ORDER BY sent_at DESC
          )
         WHERE ROWNUM = 1;

        RETURN v_preview;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'No messages yet';
    END get_chat_preview;

    FUNCTION get_last_message_content(p_user1_id IN NUMBER, p_user2_id IN NUMBER) RETURN VARCHAR2 IS
        v_content VARCHAR2(4000);
    BEGIN
        SELECT msg_content
          INTO v_content
          FROM (
              SELECT DBMS_LOB.SUBSTR(content, 4000, 1) AS msg_content
                FROM messages
               WHERE (sender_id = p_user1_id AND receiver_id = p_user2_id)
                  OR (sender_id = p_user2_id AND receiver_id = p_user1_id)
               ORDER BY sent_at DESC
          )
         WHERE ROWNUM = 1;

        RETURN v_content;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END get_last_message_content;

    FUNCTION get_unread_summary(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM messages
         WHERE receiver_id = p_user_id
           AND NVL(is_read, 0) = 0;

        RETURN TO_CHAR(v_count);
    END get_unread_summary;
END pkg_social_chat;
/

CREATE OR REPLACE PACKAGE pkg_store_purchase AS
    TYPE t_id_list IS TABLE OF NUMBER;
    TYPE t_price_list IS TABLE OF NUMBER;

    FUNCTION can_user_buy_game(
        p_user_id IN users.user_id%TYPE,
        p_game_id IN games.game_id%TYPE
    ) RETURN VARCHAR2;

    PROCEDURE purchase_game(
        p_user_id NUMBER,
        p_game_id NUMBER
    );

    PROCEDURE purchase_game(
        p_user_id NUMBER,
        p_game_ids t_id_list
    );

    PROCEDURE refund_purchase(
        p_user_id IN NUMBER,
        p_purchase_id IN NUMBER
    );

    PROCEDURE gift_game(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_game_id NUMBER
    );

    PROCEDURE gift_game(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_game_ids t_id_list
    );

    PROCEDURE update_game_price(
        p_game_id NUMBER,
        p_new_price NUMBER
    );

    PROCEDURE update_game_price(
        p_game_ids t_id_list,
        p_new_prices t_price_list
    );

    FUNCTION get_recommended_ids(
        p_user_id NUMBER
    ) RETURN t_id_list PIPELINED;
END pkg_store_purchase;
/

CREATE OR REPLACE PACKAGE BODY pkg_store_purchase AS
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

    FUNCTION can_user_buy_game(
        p_user_id IN users.user_id%TYPE,
        p_game_id IN games.game_id%TYPE
    ) RETURN VARCHAR2 IS
        v_balance NUMBER;
        v_currency wallets.currency%TYPE;
        v_game_price games.price%TYPE;
        v_owned_count NUMBER;
    BEGIN
        SELECT price
          INTO v_game_price
          FROM games
         WHERE game_id = p_game_id;

        SELECT balance, currency
          INTO v_balance, v_currency
          FROM (
              SELECT balance, currency
                FROM wallets
               WHERE user_id = p_user_id
               ORDER BY updated_at DESC, wallet_id DESC
          )
         WHERE ROWNUM = 1;

        SELECT COUNT(*)
          INTO v_owned_count
          FROM library
         WHERE user_id = p_user_id
           AND game_id = p_game_id;

        IF v_owned_count > 0 THEN
            RETURN 'It is impossible to make a purchase. The game has already been purchased';
        ELSIF convert_price(v_game_price, v_currency) > v_balance THEN
            RETURN 'It is impossible to make a purchase. Insufficient funds';
        ELSE
            RETURN 'It is possible to make a purchase';
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'User, wallet, or game not found';
        WHEN OTHERS THEN
            RETURN 'Error: ' || SQLERRM;
    END can_user_buy_game;

    PROCEDURE purchase_game(p_user_id NUMBER, p_game_id NUMBER) IS
    BEGIN
        purchase_game(p_user_id, t_id_list(p_game_id));
    END purchase_game;

    PROCEDURE purchase_game(p_user_id NUMBER, p_game_ids t_id_list) IS
        TYPE t_price_by_idx IS TABLE OF NUMBER INDEX BY PLS_INTEGER;

        l_prices t_price_by_idx;
        v_wallet_id wallets.wallet_id%TYPE;
        v_current_balance NUMBER;
        v_currency wallets.currency%TYPE;
        v_base_price NUMBER;
        v_total_price NUMBER := 0;
        v_purchase_id purchases.purchase_id%TYPE;
        v_owned_count NUMBER;
    BEGIN
        IF p_game_ids IS NULL OR p_game_ids.COUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Cart is empty');
        END IF;

        SELECT wallet_id, balance, currency
          INTO v_wallet_id, v_current_balance, v_currency
          FROM (
              SELECT wallet_id, balance, currency
                FROM wallets
               WHERE user_id = p_user_id
               ORDER BY updated_at DESC, wallet_id DESC
          )
         WHERE ROWNUM = 1;

        FOR i IN 1 .. p_game_ids.COUNT LOOP
            IF p_game_ids(i) IS NULL THEN
                RAISE_APPLICATION_ERROR(-20002, 'Cart contains an empty game id');
            END IF;

            FOR j IN 1 .. i - 1 LOOP
                IF p_game_ids(j) = p_game_ids(i) THEN
                    RAISE_APPLICATION_ERROR(-20003, 'The same game is duplicated in the cart');
                END IF;
            END LOOP;

            SELECT COUNT(*)
              INTO v_owned_count
              FROM library
             WHERE user_id = p_user_id
               AND game_id = p_game_ids(i);

            IF v_owned_count > 0 THEN
                RAISE_APPLICATION_ERROR(-20004, 'Game already exists in user library: ' || p_game_ids(i));
            END IF;

            SELECT price
              INTO v_base_price
              FROM games
             WHERE game_id = p_game_ids(i);

            l_prices(i) := convert_price(v_base_price, v_currency);
            v_total_price := v_total_price + l_prices(i);
        END LOOP;

        IF v_current_balance < v_total_price THEN
            RAISE_APPLICATION_ERROR(-20005, 'Insufficient funds. Required: ' || v_total_price);
        END IF;

        UPDATE wallets
           SET balance = balance - v_total_price,
               updated_at = CURRENT_TIMESTAMP
         WHERE wallet_id = v_wallet_id;

        INSERT INTO purchases (
            user_id,
            purchase_type,
            payment_method,
            status,
            purchase_date
        ) VALUES (
            p_user_id,
            'game',
            'wallet',
            'completed',
            CURRENT_TIMESTAMP
        )
        RETURNING purchase_id INTO v_purchase_id;

        FOR i IN 1 .. p_game_ids.COUNT LOOP
            INSERT INTO purchases_item (
                game_id,
                purchase_id,
                price_at_purchase
            ) VALUES (
                p_game_ids(i),
                v_purchase_id,
                l_prices(i)
            );

            INSERT INTO library (
                user_id,
                game_id,
                purchase_id,
                added_date
            )
            SELECT p_user_id,
                   p_game_ids(i),
                   v_purchase_id,
                   CURRENT_TIMESTAMP
              FROM dual
             WHERE NOT EXISTS (
                   SELECT 1
                     FROM library l
                    WHERE l.user_id = p_user_id
                      AND l.game_id = p_game_ids(i)
             );
        END LOOP;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END purchase_game;

    PROCEDURE refund_purchase(p_user_id IN NUMBER, p_purchase_id IN NUMBER) IS
        v_wallet_id wallets.wallet_id%TYPE;
        v_total_refund NUMBER := 0;
        v_status_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_status_count
          FROM purchases
         WHERE purchase_id = p_purchase_id
           AND user_id = p_user_id
           AND LOWER(status) = 'completed';

        IF v_status_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20006, 'Only completed purchases owned by this user can be refunded');
        END IF;

        SELECT NVL(SUM(price_at_purchase), 0)
          INTO v_total_refund
          FROM purchases_item
         WHERE purchase_id = p_purchase_id;

        IF v_total_refund <= 0 THEN
            RAISE_APPLICATION_ERROR(-20007, 'Nothing to refund because purchase item prices are zero');
        END IF;

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
           SET balance = balance + v_total_refund,
               updated_at = CURRENT_TIMESTAMP
         WHERE wallet_id = v_wallet_id;

        UPDATE purchases
           SET status = 'refunded'
         WHERE purchase_id = p_purchase_id
           AND user_id = p_user_id;

        DELETE FROM library
         WHERE user_id = p_user_id
           AND purchase_id = p_purchase_id;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END refund_purchase;

    PROCEDURE gift_game(p_sender_id NUMBER, p_receiver_id NUMBER, p_game_id NUMBER) IS
    BEGIN
        gift_game(p_sender_id, p_receiver_id, t_id_list(p_game_id));
    END gift_game;

    PROCEDURE gift_game(p_sender_id NUMBER, p_receiver_id NUMBER, p_game_ids t_id_list) IS
        v_owned_count NUMBER;
    BEGIN
        IF p_game_ids IS NULL OR p_game_ids.COUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20008, 'Gift list is empty');
        END IF;

        FOR i IN 1 .. p_game_ids.COUNT LOOP
            SELECT COUNT(*)
              INTO v_owned_count
              FROM library
             WHERE user_id = p_receiver_id
               AND game_id = p_game_ids(i);

            IF v_owned_count = 0 THEN
                INSERT INTO library (user_id, game_id, added_date)
                VALUES (p_receiver_id, p_game_ids(i), CURRENT_TIMESTAMP);
            END IF;
        END LOOP;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END gift_game;

    PROCEDURE update_game_price(p_game_id NUMBER, p_new_price NUMBER) IS
    BEGIN
        UPDATE games
           SET price = p_new_price
         WHERE game_id = p_game_id;

        COMMIT;
    END update_game_price;

    PROCEDURE update_game_price(p_game_ids t_id_list, p_new_prices t_price_list) IS
    BEGIN
        IF p_game_ids IS NULL OR p_new_prices IS NULL OR p_game_ids.COUNT != p_new_prices.COUNT THEN
            RAISE_APPLICATION_ERROR(-20009, 'Game and price list sizes must match');
        END IF;

        FOR i IN 1 .. p_game_ids.COUNT LOOP
            UPDATE games
               SET price = p_new_prices(i)
             WHERE game_id = p_game_ids(i);
        END LOOP;

        COMMIT;
    END update_game_price;

    FUNCTION get_recommended_ids(p_user_id NUMBER) RETURN t_id_list PIPELINED IS
    BEGIN
        FOR rec IN (
            SELECT game_id
              FROM (
                  SELECT g.game_id
                    FROM games g
                   WHERE NOT EXISTS (
                         SELECT 1
                           FROM library l
                          WHERE l.user_id = p_user_id
                            AND l.game_id = g.game_id
                   )
                   ORDER BY DBMS_RANDOM.VALUE
              )
             WHERE ROWNUM <= 3
        ) LOOP
            PIPE ROW(rec.game_id);
        END LOOP;

        RETURN;
    END get_recommended_ids;
END pkg_store_purchase;
/

CREATE OR REPLACE PACKAGE pkg_user_account AS
    PROCEDURE create_user(
        p_username users.username%TYPE,
        p_email users.email%TYPE,
        p_password VARCHAR2
    );

    PROCEDURE del_user(
        p_user_id IN NUMBER
    );

    PROCEDURE update_user(
        p_user_name VARCHAR2,
        p_password VARCHAR2,
        p_new_user_name VARCHAR2,
        p_new_password VARCHAR2,
        p_new_email VARCHAR2
    );

    PROCEDURE add_funds(
        p_user_id NUMBER,
        p_fund NUMBER
    );

    FUNCTION get_total_spent(
        p_user_id NUMBER
    ) RETURN NUMBER;

    FUNCTION get_user_balance(
        p_user_id users.user_id%TYPE
    ) RETURN NUMBER;

    FUNCTION get_user_game_count(
        p_user_id NUMBER
    ) RETURN NUMBER;

    FUNCTION my_authentication(
        p_username VARCHAR2,
        p_password VARCHAR2
    ) RETURN BOOLEAN;
END pkg_user_account;
/

CREATE OR REPLACE PACKAGE BODY pkg_user_account AS
    PROCEDURE create_user(
        p_username users.username%TYPE,
        p_email users.email%TYPE,
        p_password VARCHAR2
    ) IS
        v_user_id users.user_id%TYPE;
    BEGIN
        INSERT INTO users (
            username,
            email,
            password_hash,
            created_at
        ) VALUES (
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
    END create_user;

    PROCEDURE del_user(
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
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20120, 'User not found.');
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END del_user;

    PROCEDURE update_user(
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
           SET username = CASE
                              WHEN TRIM(p_new_user_name) IS NOT NULL THEN p_new_user_name
                              ELSE username
                          END,
               password_hash = CASE
                                   WHEN TRIM(p_new_password) IS NOT NULL
                                   THEN LOWER(RAWTOHEX(STANDARD_HASH(p_new_password, 'SHA256')))
                                   ELSE password_hash
                               END,
               email = CASE
                           WHEN TRIM(p_new_email) IS NOT NULL THEN p_new_email
                           ELSE email
                       END
         WHERE user_id = v_id;

        COMMIT;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20121, 'Access denied: wrong username or password.');
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END update_user;

    PROCEDURE add_funds(
        p_user_id NUMBER,
        p_fund NUMBER
    ) IS
        v_wallet_id wallets.wallet_id%TYPE;
        v_new_balance wallets.balance%TYPE;
    BEGIN
        IF p_fund <= 0 THEN
            RAISE_APPLICATION_ERROR(-20122, 'Fund amount must be positive.');
        END IF;

        BEGIN
            SELECT wallet_id, balance + p_fund
              INTO v_wallet_id, v_new_balance
              FROM (
                  SELECT wallet_id, balance
                    FROM wallets
                   WHERE user_id = p_user_id
                   ORDER BY updated_at DESC, wallet_id DESC
              )
             WHERE ROWNUM = 1;

            UPDATE wallets
               SET balance = v_new_balance,
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

    FUNCTION get_total_spent(p_user_id NUMBER) RETURN NUMBER IS
        v_total NUMBER;
    BEGIN
        SELECT NVL(SUM(pi.price_at_purchase), 0)
          INTO v_total
          FROM purchases p
          JOIN purchases_item pi ON pi.purchase_id = p.purchase_id
         WHERE p.user_id = p_user_id
           AND LOWER(p.status) IN ('completed', 'refunded');

        RETURN v_total;
    END get_total_spent;

    FUNCTION get_user_balance(
        p_user_id users.user_id%TYPE
    ) RETURN NUMBER IS
        v_balance NUMBER;
    BEGIN
        SELECT balance
          INTO v_balance
          FROM (
              SELECT balance
                FROM wallets
               WHERE user_id = p_user_id
               ORDER BY updated_at DESC, wallet_id DESC
          )
         WHERE ROWNUM = 1;

        RETURN v_balance;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
    END get_user_balance;

    FUNCTION get_user_game_count(
        p_user_id NUMBER
    ) RETURN NUMBER IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM library
         WHERE user_id = p_user_id;

        RETURN v_count;
    END get_user_game_count;

    FUNCTION my_authentication(
        p_username VARCHAR2,
        p_password VARCHAR2
    ) RETURN BOOLEAN IS
        l_hash users.password_hash%TYPE;
        l_input_hash users.password_hash%TYPE;
    BEGIN
        SELECT LOWER(RAWTOHEX(STANDARD_HASH(p_password, 'SHA256')))
          INTO l_input_hash
          FROM dual;

        IF UPPER(p_username) = 'ADMIN'
           AND LOWER(l_input_hash) = LOWER(V('APP_ADMIN_HASH')) THEN
            RETURN TRUE;
        END IF;

        BEGIN
            SELECT password_hash
              INTO l_hash
              FROM users
             WHERE UPPER(username) = UPPER(p_username);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN FALSE;
        END;

        RETURN LOWER(l_hash) = LOWER(l_input_hash);
    END my_authentication;
END pkg_user_account;
/
