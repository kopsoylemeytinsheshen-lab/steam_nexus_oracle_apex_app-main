-- Raw standalone procedure DDL copied from Oracle APEX Object Browser.

create or replace PROCEDURE accept_friend_request(
    p_user_id NUMBER,
    p_friend_id NUMBER
) IS
    v_exists NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_exists
    FROM friends
    WHERE user_id = p_user_id AND friend_id = p_friend_id;

    IF v_exists > 0 THEN
        DBMS_OUTPUT.PUT_LINE('You are already friends.');
        RETURN;
    END IF;

    INSERT INTO friends (user_id, friend_id)
    VALUES (p_user_id, p_friend_id);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Success! Friend added.');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

create or replace PROCEDURE add_funds (
    p_user_id NUMBER,
    p_fund    NUMBER
)
IS
    v_total    NUMBER;
    v_currency VARCHAR2(10);
BEGIN
    IF p_fund <= 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: Fund must be positive');
        RETURN;
    END IF;

    SELECT MAX(currency) INTO v_currency
    FROM wallets
    WHERE user_id = p_user_id;

    SELECT NVL(SUM(balance), 0) + p_fund INTO v_total
    FROM wallets
    WHERE user_id = p_user_id;

    INSERT INTO wallets (wallet_id, user_id, currency, balance, updated_at)
    VALUES (wallet_id_seq.NEXTVAL, p_user_id, v_currency, p_fund, SYSDATE);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Success! New total balance: ' || v_total);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('User wallet not found');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END add_funds;
/

create or replace procedure add_game(
    p_developer_id number,
    p_title varchar2,
    p_price number,
    p_age_rating varchar2,
    p_description varchar2
)
is
begin
    insert into games (game_id, developer_id, title, price, release_date, age_rating, description)
    values (game_id_seq.NEXTVAL, p_developer_id , p_title, p_price, sysdate, p_age_rating, p_description);
    commit;
end add_game;
/

create or replace PROCEDURE award_achievement(
    p_user_id NUMBER,
    p_achievement_ids PKG_STORE_PURCHASE.t_id_list
) IS
    v_valid_achievements PKG_STORE_PURCHASE.t_id_list := PKG_STORE_PURCHASE.t_id_list();
BEGIN
    SELECT column_value
    BULK COLLECT INTO v_valid_achievements
    FROM TABLE(p_achievement_ids)
    WHERE column_value NOT IN (
        SELECT achievement_id FROM user_achievements WHERE user_id = p_user_id
    );

    IF v_valid_achievements.COUNT > 0 THEN
        FORALL i IN 1 .. v_valid_achievements.COUNT
            INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
            VALUES (p_user_id, v_valid_achievements(i), CURRENT_TIMESTAMP);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Achievement awarded successfully!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('User already has this achievement.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

create or replace PROCEDURE award_random_achievement(
    p_user_id NUMBER,
    p_game_id NUMBER
) IS
    v_ach_id NUMBER;
BEGIN
    BEGIN
        SELECT achievement_id INTO v_ach_id
        FROM (
            SELECT achievement_id
            FROM achievements
            WHERE game_id = p_game_id
            MINUS
            SELECT achievement_id
            FROM user_achievements
            WHERE user_id = p_user_id
        )
        WHERE ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('User already has all achievements for this game.');
            RETURN;
    END;

    INSERT INTO user_achievements (user_id, achievement_id, unlocked_at)
    VALUES (p_user_id, v_ach_id, CURRENT_TIMESTAMP);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Success! Achievement ID ' || v_ach_id || ' awarded to user ' || p_user_id);

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

create or replace PROCEDURE create_user(
    p_username users.username%TYPE,
    p_email users.email%TYPE,
    p_password VARCHAR2
) IS
BEGIN
    INSERT INTO users (user_id, username, email, password_hash, created_at)
    VALUES (user_id_seq.NEXTVAL, p_username, p_email, STANDARD_HASH(p_password, 'SHA256'), SYSDATE);

    COMMIT;
END;
/

create or replace PROCEDURE delete_review(
    p_review_id NUMBER,
    p_user_id NUMBER
) IS
BEGIN
    DELETE FROM reviews
    WHERE review_id = p_review_id AND user_id = p_user_id;

    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Review deleted.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Review not found or you are not the author.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

create or replace PROCEDURE del_user(
    p_user_id IN NUMBER
)
IS
    v_user_name VARCHAR2(100);
BEGIN
    SELECT username INTO v_user_name FROM users WHERE user_id = p_user_id;

    DELETE FROM users WHERE user_id = p_user_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('User "' || v_user_name || '" was deleted');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Ошибка: Пользователь не найден.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Системная ошибка: ' || SQLERRM);
END del_user;
/

create or replace procedure end_session(
    p_user_id number
)
is
begin
    update sessions
    set end_time = sysdate
    where user_id = p_user_id
      and end_time is null;
    if sql%notfound then
        dbms_output.put_line('Активных сессий не найдено.');
    else
        commit;
    end if;
end end_session;
/

create or replace PROCEDURE gift_game(
    p_sender_id NUMBER,
    p_receiver_id NUMBER,
    p_game_ids PKG_STORE_PURCHASE.t_id_list
) IS
    v_price NUMBER := 0;
    v_balance NUMBER;
    v_currency VARCHAR2(10);
    v_valid_game_ids PKG_STORE_PURCHASE.t_id_list := PKG_STORE_PURCHASE.t_id_list();
    v_prices         PKG_STORE_PURCHASE.t_price_list := PKG_STORE_PURCHASE.t_price_list();
BEGIN
    SELECT balance, currency INTO v_balance, v_currency
    FROM (SELECT balance, currency FROM wallets WHERE user_id = p_sender_id ORDER BY updated_at DESC)
    WHERE ROWNUM = 1;

    SELECT game_id, price
    BULK COLLECT INTO v_valid_game_ids, v_prices
    FROM games
    WHERE game_id IN (SELECT column_value FROM TABLE(p_game_ids))
    AND game_id NOT IN (SELECT game_id FROM library WHERE user_id = p_receiver_id);

    IF v_valid_game_ids.COUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: Friend already owns this game.');
        RETURN;
    END IF;

    FOR i IN 1 .. v_prices.COUNT LOOP
        v_price := v_price + v_prices(i);
    END LOOP;

    CASE v_currency
        WHEN 'EUR' THEN v_price := v_price * 0.85;
        WHEN 'KZT' THEN v_price := v_price * 471.86;
        WHEN 'GBP' THEN v_price := v_price * 0.74;
        WHEN 'JPY' THEN v_price := v_price * 159.17;
        WHEN 'USD' THEN v_price := v_price * 1;
        ELSE v_price := v_price * 1;
    END CASE;

    IF v_balance >= v_price THEN
        UPDATE wallets SET balance = balance - v_price WHERE user_id = p_sender_id;

        FORALL i IN 1 .. v_valid_game_ids.COUNT
            INSERT INTO library (user_id, game_id, added_date)
            VALUES (p_receiver_id, v_valid_game_ids(i), SYSDATE);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Success! Gift sent to user ' || p_receiver_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient funds to send this gift.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error in gift_game: ' || SQLERRM);
END;
/

create or replace PROCEDURE purchase_game(
    p_user_id NUMBER,
    p_game_ids PKG_STORE_PURCHASE.t_id_list
) IS
    v_current_balance NUMBER;
    v_total_price     NUMBER := 0;
    v_currency        VARCHAR2(10);
    v_purch_id        NUMBER;
    v_valid_game_ids PKG_STORE_PURCHASE.t_id_list := PKG_STORE_PURCHASE.t_id_list();
    v_prices         PKG_STORE_PURCHASE.t_price_list := PKG_STORE_PURCHASE.t_price_list();
BEGIN
    SELECT currency INTO v_currency
    FROM wallets
    WHERE user_id = p_user_id AND ROWNUM = 1;

    SELECT balance INTO v_current_balance
    FROM (SELECT balance FROM wallets WHERE user_id = p_user_id ORDER BY updated_at DESC)
    WHERE ROWNUM = 1;

    SELECT game_id, price
    BULK COLLECT INTO v_valid_game_ids, v_prices
    FROM games
    WHERE game_id IN (SELECT column_value FROM TABLE(p_game_ids))
    AND game_id NOT IN (SELECT game_id FROM library WHERE user_id = p_user_id);

    IF v_valid_game_ids.COUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No new games to purchase.');
        RETURN;
    END IF;

    FOR i IN 1 .. v_prices.COUNT LOOP
        v_total_price := v_total_price + v_prices(i);
    END LOOP;

    CASE v_currency
        WHEN 'EUR' THEN v_total_price := v_total_price * 0.85;
        WHEN 'KZT' THEN v_total_price := v_total_price * 471.86;
        WHEN 'GBP' THEN v_total_price := v_total_price * 0.74;
        WHEN 'JPY' THEN v_total_price := v_total_price * 159.17;
        ELSE v_total_price := v_total_price * 1;
    END CASE;

    IF v_current_balance >= v_total_price THEN
        UPDATE wallets SET balance = balance - v_total_price WHERE user_id = p_user_id;

        v_purch_id := purchase_id_seq.NEXTVAL;
        INSERT INTO purchases (purchase_id, user_id, purchase_type, payment_method, status, purchase_date)
        VALUES (v_purch_id, p_user_id, 'bundle', 'wallet', 'completed', CURRENT_TIMESTAMP);

        FORALL i IN 1 .. v_valid_game_ids.COUNT
            INSERT INTO purchases_item (purchase_item_id, purchase_id, game_id, price_at_purchase)
            VALUES (purchase_item_id_seq.NEXTVAL, v_purch_id, v_valid_game_ids(i), v_prices(i));

        FORALL i IN 1 .. v_valid_game_ids.COUNT
            INSERT INTO library (user_id, game_id, added_date)
            VALUES (p_user_id, v_valid_game_ids(i), SYSDATE);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Success! Items: ' || v_valid_game_ids.COUNT || '. Cost: ' || v_total_price);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient funds.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

create or replace PROCEDURE refund_purchase(
    p_user_id IN NUMBER,
    p_purchase_id IN NUMBER
)
AS
    v_currency       VARCHAR2(3);
    v_total_refund   NUMBER := 0;
    v_item_refund    NUMBER;
BEGIN
    SELECT currency INTO v_currency
    FROM wallets
    WHERE user_id = p_user_id
    AND ROWNUM = 1;

    FOR rec IN (
        SELECT purchase_item_id, price_at_purchase
        FROM purchases_item
        WHERE purchase_id = p_purchase_id
    )
    LOOP
        v_item_refund := rec.price_at_purchase;

        CASE v_currency
            WHEN 'EUR' THEN v_item_refund := v_item_refund * 0.85;
            WHEN 'KZT' THEN v_item_refund := v_item_refund * 471.86;
            WHEN 'GBP' THEN v_item_refund := v_item_refund * 0.74;
            WHEN 'JPY' THEN v_item_refund := v_item_refund * 159.17;
            WHEN 'USD' THEN v_item_refund := v_item_refund * 1;
        END CASE;

        v_total_refund := v_total_refund + v_item_refund;
    END LOOP;

    IF v_total_refund > 0 THEN
        UPDATE wallets
        SET balance = balance + v_total_refund,
            updated_at = CURRENT_TIMESTAMP
        WHERE user_id = p_user_id;

        UPDATE purchases
        SET status = 'REFUNDED'
        WHERE purchase_id = p_purchase_id;

        DBMS_OUTPUT.PUT_LINE('Total refunded: ' || v_total_refund || ' ' || v_currency);
    ELSE
        DBMS_OUTPUT.PUT_LINE('There are no available positions to refund');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Execution error:' || SQLERRM);
END;
/

create or replace procedure "REMOVE_GAME_FROM_LIBRARY"(
    p_user_id users.user_id%TYPE,
    p_game_id games.game_id%TYPE
)
as
    v_owned_count NUMBER;
begin
    SELECT COUNT(*) INTO v_owned_count
    FROM library
    WHERE user_id = p_user_id and game_id = p_game_id;

    IF v_owned_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('User does not have such a game, deletion is not possible');
        RETURN;
    END IF;

    DELETE FROM library WHERE user_id = p_user_id and game_id = p_game_id;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Game removed from library');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred');
        RAISE;
end "REMOVE_GAME_FROM_LIBRARY";
/

create or replace procedure "SEND_MESSAGE"(
    p_username1 varchar2,
    p_username2 varchar2,
    p_text varchar2,
    p_user_name varchar2,
    p_password varchar2
)
is
    v_id number;
begin
    select user_id into v_id from users where username = p_user_name and password_hash = STANDARD_HASH(p_password, 'SHA256');

    INSERT INTO messages(message_id, sender_id, receiver_id, content, sent_at, is_read)
    VALUES (message_id_seq.NEXTVAL, v_id, p_username2, p_text, SYSDATE, 0);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Execution error:' || SQLERRM);
END;
/

create or replace PROCEDURE START_SESSION(
    p_user_id NUMBER,
    p_game_id NUMBER
)
is
begin
    insert into sessions (session_id, user_id, game_id, start_time, end_time)
    values (session_id_seq.NEXTVAL, p_user_id, p_game_id, sysdate, null);

    commit;
end START_SESSION;
/

create or replace PROCEDURE unfriend_user(
    p_user_id NUMBER,
    p_friend_id NUMBER
) IS
BEGIN
    DELETE FROM friends
    WHERE (user_id = p_user_id AND friend_id = p_friend_id)
       OR (user_id = p_friend_id AND friend_id = p_user_id);

    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('User removed from friends.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Friendship record not found.');
    END IF;
END;
/

create or replace PROCEDURE update_game_price(
    p_game_id NUMBER,
    p_new_price NUMBER
) IS
BEGIN
    IF p_new_price < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: Price cannot be negative.');
        RETURN;
    END IF;

    UPDATE games SET price = p_new_price WHERE game_id = p_game_id;

    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Price updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Game not found.');
    END IF;
END;
/

create or replace procedure "UPDATE_USER"(
    p_user_name varchar2,
    p_password varchar2,
    p_new_user_name varchar2,
    p_new_password varchar2,
    p_new_email varchar2
)
is
    v_id number;
begin
    select user_id into v_id from users where username = p_user_name and password_hash = STANDARD_HASH(p_password, 'SHA256');
    update users
    set username = p_new_user_name,
        password_hash = STANDARD_HASH(p_new_password, 'SHA256'),
        email = p_new_email
    where user_id = v_id;

    commit;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Доступ запрещен: неверное имя или пароль.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Произошла ошибка: ' || SQLERRM);
end "UPDATE_USER";
/

create or replace procedure "WRITE_REVIEW"(
    p_user_id NUMBER,
    p_game_id NUMBER,
    p_review VARCHAR2,
    p_type VARCHAR2
)
as
    v_owned_count NUMBER;
Begin
    SELECT COUNT(*) INTO v_owned_count
    FROM library
    WHERE user_id = p_user_id AND game_id = p_game_id;

    IF v_owned_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('User does not have such a game');
        RETURN;
    END IF;

    INSERT INTO reviews(review_id, user_id, game_id, review_type, review_text, review_date)
    VALUES(review_id_seq.NEXTVAL, p_user_id, p_game_id, p_type, p_review, SYSDATE);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('The review was recorded successfully');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Execution error:' || SQLERRM);
END;
/

