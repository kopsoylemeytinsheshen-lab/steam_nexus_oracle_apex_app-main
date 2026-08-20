create or replace package "PKG_ACHIEVEMENTS" as
    PROCEDURE START_SESSION(p_user_id IN NUMBER, p_game_id IN NUMBER);
    PROCEDURE END_SESSION(p_user_id IN NUMBER);
    PROCEDURE AWARD_ACHIEVEMENT(p_user_id in number, p_game_id in number);
    PROCEDURE AWARD_RANDOM_ACHIEVEMENT(p_user_id in number, p_achievement_id in number);

    FUNCTION GET_ACHIEVEMENT_PROGRESS(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN NUMBER;
    FUNCTION GET_ACHIEVEMENT_TIER(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION GET_LATEST_ACHIEVEMENT(p_user_id IN NUMBER) RETURN VARCHAR2;
    FUNCTION GET_USER_ACHIEVEMENT_COUNT(p_user_id IN NUMBER) RETURN NUMBER;
    FUNCTION GET_PLAYER_TIER(p_user_id IN NUMBER) RETURN VARCHAR2;
END PKG_ACHIEVEMENTS;
/create or replace PACKAGE BODY "PKG_ACHIEVEMENTS" AS

    -- 1. start session
    PROCEDURE START_SESSION(p_user_id IN NUMBER, p_game_id IN NUMBER) IS
    BEGIN
        INSERT INTO sessions (user_id, game_id, start_time)
        VALUES (p_user_id, p_game_id, SYSDATE);
    END START_SESSION;

    -- 2. end session
    PROCEDURE END_SESSION(p_user_id IN NUMBER) IS
    BEGIN
        UPDATE sessions
        SET end_time = SYSDATE
        WHERE user_id = p_user_id 
          AND end_time IS NULL;
    END END_SESSION;

    -- 3. grant any available achievement from the game
    PROCEDURE AWARD_ACHIEVEMENT(p_user_id IN NUMBER, p_game_id IN NUMBER) IS
    BEGIN
        INSERT INTO user_achievements (user_id, achievement_id)
        SELECT p_user_id, achievement_id
        FROM achievements a
        WHERE a.game_id = p_game_id
          AND NOT EXISTS (
              SELECT 1 FROM user_achievements ua 
              WHERE ua.user_id = p_user_id 
                AND ua.achievement_id = a.achievement_id
          )
          AND ROWNUM = 1;
    END AWARD_ACHIEVEMENT;

    -- 4. grant specific achievement
    PROCEDURE AWARD_RANDOM_ACHIEVEMENT(p_user_id IN NUMBER, p_achievement_id IN NUMBER) IS
    BEGIN
        INSERT INTO user_achievements (user_id, achievement_id)
        VALUES (p_user_id, p_achievement_id);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN 
            NULL; -- ignore if achievement already exists
    END AWARD_RANDOM_ACHIEVEMENT;

    -- 5. achievement completion percentage in a game
    FUNCTION GET_ACHIEVEMENT_PROGRESS(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN NUMBER IS
        v_total NUMBER;
        v_unlocked NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_total FROM achievements WHERE game_id = p_game_id;
        
        SELECT COUNT(ua.achievement_id) INTO v_unlocked
        FROM user_achievements ua
        JOIN achievements a ON ua.achievement_id = a.achievement_id
        WHERE ua.user_id = p_user_id AND a.game_id = p_game_id;

        IF v_total = 0 THEN RETURN 0; END IF;
        RETURN ROUND((v_unlocked / v_total) * 100);
    END GET_ACHIEVEMENT_PROGRESS;

    -- 6. tier in a specific game
    FUNCTION GET_ACHIEVEMENT_TIER(p_user_id IN NUMBER, p_game_id IN NUMBER) RETURN VARCHAR2 IS
        v_prog NUMBER;
    BEGIN
        v_prog := GET_ACHIEVEMENT_PROGRESS(p_user_id, p_game_id);
        IF v_prog >= 100 THEN RETURN 'Platinum';
        ELSIF v_prog >= 70 THEN RETURN 'Gold';
        ELSIF v_prog >= 40 THEN RETURN 'Silver';
        ELSE RETURN 'Bronze';
        END IF;
    END GET_ACHIEVEMENT_TIER;

    -- 7. title of latest earned achievement (using TITLE)
    FUNCTION GET_LATEST_ACHIEVEMENT(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_title VARCHAR2(255);
    BEGIN
        SELECT a.title INTO v_title
        FROM user_achievements ua
        JOIN achievements a ON ua.achievement_id = a.achievement_id
        WHERE ua.user_id = p_user_id
        ORDER BY ua.rowid DESC 
        FETCH FIRST 1 ROW ONLY;
        
        RETURN v_title;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN 
            RETURN 'No achievements yet';
    END GET_LATEST_ACHIEVEMENT;

    -- 8. total number of achievements for a player
    FUNCTION GET_USER_ACHIEVEMENT_COUNT(p_user_id IN NUMBER) RETURN NUMBER IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM user_achievements WHERE user_id = p_user_id;
        RETURN v_count;
    END GET_USER_ACHIEVEMENT_COUNT;

    -- 9. overall player rank system
    FUNCTION GET_PLAYER_TIER(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_count NUMBER;
    BEGIN
        v_count := GET_USER_ACHIEVEMENT_COUNT(p_user_id);
        IF v_count > 100 THEN RETURN 'Elite';
        ELSIF v_count > 50 THEN RETURN 'Veteran';
        ELSIF v_count > 10 THEN RETURN 'Gamer';
        ELSE RETURN 'Newbie';
        END IF;
    END GET_PLAYER_TIER;

END "PKG_ACHIEVEMENTS";
/

create or replace PACKAGE "PKG_LIBRARY_GAMES" AS
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

    FUNCTION recommend_game(p_user_id NUMBER) 
    RETURN VARCHAR2;

    FUNCTION get_game_popularity(p_game_id IN NUMBER) 
    RETURN VARCHAR2;

    FUNCTION get_favorite_category(p_user_id IN NUMBER) 
    RETURN VARCHAR2;

    FUNCTION get_category_name(p_cat_id IN NUMBER) 
    RETURN VARCHAR2;

END "PKG_LIBRARY_GAMES";
/
create or replace PACKAGE BODY "PKG_LIBRARY_GAMES" AS

    ----------------------------------------------------------------------------
    PROCEDURE add_game(
        p_developer_id NUMBER,
        p_title VARCHAR2,
        p_price NUMBER,
        p_age_rating VARCHAR2,
        p_description VARCHAR2
    ) IS
    BEGIN
        INSERT INTO games (game_id, developer_id, title, price, release_date, age_rating, description)
        VALUES (game_id_seq.NEXTVAL, p_developer_id, p_title, p_price, SYSDATE, p_age_rating, p_description);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Game "' || p_title || '" added successfully.');
    END add_game;

    ----------------------------------------------------------------------------
    PROCEDURE remove_game_from_library(
        p_user_id users.user_id%TYPE,
        p_game_id games.game_id%TYPE
    ) AS
        v_owned_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_owned_count FROM library
        WHERE user_id = p_user_id AND game_id = p_game_id;

        IF v_owned_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('User does not have such a game, deletion is not possible');
            RETURN;
        END IF;

        DELETE FROM library WHERE user_id = p_user_id AND game_id = p_game_id;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Game removed from library');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
            RAISE;   
    END remove_game_from_library;

    ----------------------------------------------------------------------------
    PROCEDURE write_review(
        p_user_id NUMBER,
        p_game_id NUMBER,
        p_review VARCHAR2,
        p_type VARCHAR2
    ) AS
        v_owned_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_owned_count FROM library
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
    END write_review;

    ----------------------------------------------------------------------------
    PROCEDURE delete_review(
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
    END delete_review;

    ----------------------------------------------------------------------------
    FUNCTION recommend_game(p_user_id NUMBER) RETURN VARCHAR2 IS
        v_category VARCHAR2(100);
        v_game_name VARCHAR2(100);
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM library WHERE user_id = p_user_id;

        IF v_count = 0 THEN
            RETURN 'There is not enough data for a recommendation';
        END IF;

        SELECT category_name INTO v_category FROM (
            SELECT c.category_name, COUNT(*) AS cnt
            FROM categories c
            JOIN game_categories gc ON gc.category_id = c.category_id
            JOIN library l ON l.game_id = gc.game_id
            WHERE l.user_id = p_user_id
            GROUP BY c.category_name
            ORDER BY cnt DESC
        ) WHERE ROWNUM = 1;

        SELECT title INTO v_game_name FROM (
            SELECT g.title
            FROM games g
            JOIN game_categories gc ON gc.game_id = g.game_id
            JOIN categories c ON c.category_id = gc.category_id
            WHERE c.category_name = v_category
              AND NOT EXISTS (
                  SELECT 1 FROM library l
                  WHERE l.user_id = p_user_id AND l.game_id = g.game_id
              )
            ORDER BY dbms_random.value
        ) WHERE ROWNUM = 1;

        RETURN 'Recommended game is: ' || v_game_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'No available games to recommend in your favorite category';
        WHEN OTHERS THEN
            RETURN 'Recommendation error: ' || SQLERRM;
    END recommend_game;

    ----------------------------------------------------------------------------
    FUNCTION get_game_popularity(p_game_id IN NUMBER) RETURN VARCHAR2 IS
        v_buyers NUMBER;
    BEGIN
        SELECT COUNT(DISTINCT p.user_id) INTO v_buyers
        FROM purchases p
        JOIN purchases_item pi ON p.purchase_id = pi.purchase_id
        WHERE pi.game_id = p_game_id;

        IF v_buyers > 1000 THEN RETURN 'Bestseller';
        ELSIF v_buyers > 100 THEN RETURN 'Trending';
        ELSIF v_buyers > 0 THEN RETURN 'Niche Title';
        ELSE RETURN 'New Release / Hidden Gem';
        END IF;
    END get_game_popularity;

    ----------------------------------------------------------------------------
    FUNCTION get_favorite_category(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_category_name VARCHAR2(100);
    BEGIN
        SELECT cat_out INTO v_category_name FROM (
            SELECT c.category_name as cat_out, COUNT(s.session_id) as play_count
            FROM sessions s
            JOIN games g ON s.game_id = g.game_id
            JOIN game_categories gc ON g.game_id = gc.game_id
            JOIN categories c ON gc.category_id = c.category_id
            WHERE s.user_id = p_user_id
            GROUP BY c.category_name
            ORDER BY play_count DESC
        ) WHERE ROWNUM = 1;

        RETURN v_category_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN RETURN 'No sessions yet';
        WHEN OTHERS THEN RETURN 'Error: ' || SQLERRM;
    END get_favorite_category;

    ----------------------------------------------------------------------------
    FUNCTION get_category_name(p_cat_id IN NUMBER) RETURN VARCHAR2 IS
        v_name CATEGORIES.category_name%TYPE;
    BEGIN
        SELECT category_name INTO v_name FROM categories WHERE category_id = p_cat_id;
        RETURN v_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN RETURN 'Unknown';
    END get_category_name;

END "PKG_LIBRARY_GAMES";


create or replace package PKG_SOCIAL_CHAT as
    PROCEDURE SEND_MESSAGE(
        p_user_id number,
        p_game_id number
    );

    PROCEDURE ACCEPT_FRIEND_REQUEST(p_user_id in number, p_friend_id in number);
    PROCEDURE UNFRIEND_USER(p_user_id in number, p_friend_id in number);

    FUNCTION GET_CHAT_PREVIEW(p_user_id IN NUMBER, p_chat_partner_id IN NUMBER) RETURN VARCHAR2;

    FUNCTION GET_LAST_MESSAGE_CONTENT(p_user1_id IN NUMBER, p_user2_id IN NUMBER) RETURN VARCHAR2;

    FUNCTION GET_UNREAD_SUMMARY(p_user_id IN NUMBER) RETURN VARCHAR2;
END PKG_SOCIAL_CHAT;
/create or replace PACKAGE BODY PKG_SOCIAL_CHAT AS

    -- 1. send message
    PROCEDURE SEND_MESSAGE(
        p_user_id number,
        p_game_id number
    ) IS
    BEGIN
        INSERT INTO messages (sender_id, content, sent_at, is_read)
        VALUES (p_user_id, 'System: User joined game ' || p_game_id, SYSDATE, 'N');
    END SEND_MESSAGE;

    -- 2. accept friend request
    PROCEDURE ACCEPT_FRIEND_REQUEST(p_user_id in number, p_friend_id in number) IS
    BEGIN
        INSERT INTO friends (user_id, friend_id)
        VALUES (p_user_id, p_friend_id);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            NULL; 
    END ACCEPT_FRIEND_REQUEST;

    -- 3. remove from friends (fixed name: was unfriend_user)
    PROCEDURE UNFRIEND_USER(p_user_id in number, p_friend_id in number) IS
    BEGIN
        DELETE FROM friends 
        WHERE (user_id = p_user_id AND friend_id = p_friend_id)
           OR (user_id = p_friend_id AND friend_id = p_user_id);
    END UNFRIEND_USER;

    -- 4. last message preview
    FUNCTION GET_CHAT_PREVIEW(p_user_id IN NUMBER, p_chat_partner_id IN NUMBER) RETURN VARCHAR2 IS
        v_preview VARCHAR2(4000);
    BEGIN
        SELECT content
        INTO v_preview
        FROM messages
        WHERE (sender_id = p_user_id AND receiver_id = p_chat_partner_id)
           OR (sender_id = p_chat_partner_id AND receiver_id = p_user_id)
        ORDER BY sent_at DESC
        FETCH FIRST 1 ROW ONLY;

        RETURN v_preview;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN 
            RETURN 'No messages yet';
    END GET_CHAT_PREVIEW;

    -- 5. last message content
    FUNCTION GET_LAST_MESSAGE_CONTENT(p_user1_id IN NUMBER, p_user2_id IN NUMBER) RETURN VARCHAR2 IS
        v_content VARCHAR2(4000);
    BEGIN
        SELECT content 
        INTO v_content
        FROM messages
        WHERE (sender_id = p_user1_id AND receiver_id = p_user2_id)
           OR (sender_id = p_user2_id AND receiver_id = p_user1_id)
        ORDER BY sent_at DESC
        FETCH FIRST 1 ROW ONLY;

        RETURN v_content;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN 
            RETURN NULL;
    END GET_LAST_MESSAGE_CONTENT;

    -- 6. unread summary
    FUNCTION GET_UNREAD_SUMMARY(p_user_id IN NUMBER) RETURN VARCHAR2 IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) 
        INTO v_count 
        FROM messages 
        WHERE receiver_id = p_user_id 
          AND is_read = 'N';
          
        RETURN TO_CHAR(v_count);
    END GET_UNREAD_SUMMARY;

END PKG_SOCIAL_CHAT;
/ 


create or replace PACKAGE "PKG_STORE_PURCHASE" AS
    --collections
    TYPE t_id_list IS TABLE OF NUMBER; 
    --collections
    TYPE t_price_list IS TABLE OF NUMBER; 

    -- function to check if user can buy a game
    FUNCTION can_user_buy_game(
        p_user_id IN users.user_id%TYPE,
        p_game_id IN games.game_id%TYPE
    ) RETURN VARCHAR2;

    -- procedure for single game purchase
    PROCEDURE purchase_game(
        p_user_id NUMBER,
        p_game_id NUMBER
    );

    -- procedure for multiple games purchase
    --collections
    PROCEDURE purchase_game(
        p_user_id NUMBER,
        p_game_ids t_id_list
    );

    -- procedure for refund
    PROCEDURE refund_purchase(
        p_user_id IN NUMBER,
        p_purchase_id IN NUMBER
    );

    -- procedure for gifting a single game
    PROCEDURE gift_game(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_game_id NUMBER
    );

    -- procedure for gifting multiple games (bundle)
    --collections
    PROCEDURE gift_game(
        p_sender_id NUMBER,
        p_receiver_id NUMBER,
        p_game_ids t_id_list
    );

    -- procedure for updating price (single)
    PROCEDURE update_game_price(
        p_game_id NUMBER,
        p_new_price NUMBER
    );

    -- procedure for bulk price update (e.g. sale)
    --collections
    PROCEDURE update_game_price(
        p_game_ids t_id_list,
        p_new_prices t_price_list
    );

    -- function to get recommended ids
    --collections
    FUNCTION get_recommended_ids(
        p_user_id NUMBER
    ) RETURN t_id_list PIPELINED;

END "PKG_STORE_PURCHASE";
/ 
create or replace package body "PKG_STORE_PURCHASE" as 
 
    function convert_price( 
        p_price    in number, 
        p_currency in varchar2 
    ) return number is 
    begin 
        return round( 
            case upper(nvl(p_currency, 'USD')) 
                when 'EUR' then p_price * 0.85 
                when 'KZT' then p_price * 471.86 
                when 'GBP' then p_price * 0.74 
                when 'JPY' then p_price * 159.17 
                else p_price 
            end, 
            2 
        ); 
    end convert_price; 
 
    function can_user_buy_game ( 
        p_user_id in users.user_id%type, 
        p_game_id in games.game_id%type 
    ) return varchar2 is 
        v_balance     number; 
        v_currency    varchar2(10); 
        v_game_price  number; 
        v_owned_count number; 
    begin 
        select price 
          into v_game_price 
          from games 
         where game_id = p_game_id; 
 
        select balance, currency 
          into v_balance, v_currency 
          from ( 
              select balance, currency 
                from wallets 
               where user_id = p_user_id 
               order by updated_at desc, wallet_id desc 
          ) 
         where rownum = 1; 
 
        select count(*) 
          into v_owned_count 
          from library 
         where user_id = p_user_id 
           and game_id = p_game_id; 
 
        if v_owned_count > 0 then 
            return 'It is impossible to make a purchase. The game has already been purchased'; 
        elsif convert_price(v_game_price, v_currency) > v_balance then 
            return 'It is impossible to make a purchase. Insufficient funds'; 
        else 
            return 'It is possible to make a purchase'; 
        end if; 
    exception 
        when no_data_found then 
            return 'User, wallet, or game not found'; 
        when others then 
            return 'Error: ' || sqlerrm; 
    end can_user_buy_game; 
 
    procedure purchase_game(p_user_id number, p_game_id number) is 
    begin 
        purchase_game(p_user_id, t_id_list(p_game_id)); 
    end purchase_game; 
 
    procedure purchase_game(p_user_id number, p_game_ids t_id_list) is 
        type t_price_by_idx is table of number index by pls_integer; 
 
        l_prices          t_price_by_idx; 
        v_wallet_id       wallets.wallet_id%type; 
        v_current_balance number; 
        v_currency        wallets.currency%type; 
        v_base_price      number; 
        v_total_price     number := 0; 
        v_purchase_id     purchases.purchase_id%type; 
        v_owned_count     number; 
    begin 
        if p_game_ids is null or p_game_ids.count = 0 then 
            raise_application_error(-20001, 'Cart is empty'); 
        end if; 
 
        select wallet_id, balance, currency 
          into v_wallet_id, v_current_balance, v_currency 
          from ( 
              select wallet_id, balance, currency 
                from wallets 
               where user_id = p_user_id 
               order by updated_at desc, wallet_id desc 
          ) 
         where rownum = 1; 
 
        for i in 1 .. p_game_ids.count loop 
            if p_game_ids(i) is null then 
                raise_application_error(-20002, 'Cart contains an empty game id'); 
            end if; 
 
            for j in 1 .. i - 1 loop 
                if p_game_ids(j) = p_game_ids(i) then 
                    raise_application_error(-20003, 'The same game is duplicated in the cart'); 
                end if; 
            end loop; 
 
            select count(*) 
              into v_owned_count 
              from library 
             where user_id = p_user_id 
               and game_id = p_game_ids(i); 
 
            if v_owned_count > 0 then 
                raise_application_error(-20004, 'Game already exists in user library: ' || p_game_ids(i)); 
            end if; 
 
            select price 
              into v_base_price 
              from games 
             where game_id = p_game_ids(i); 
 
            l_prices(i) := convert_price(v_base_price, v_currency); 
            v_total_price := v_total_price + l_prices(i); 
        end loop; 
 
        if v_current_balance < v_total_price then 
            raise_application_error(-20005, 'Insufficient funds. Required: ' || v_total_price); 
        end if; 
 
        update wallets 
           set balance = balance - v_total_price, 
               updated_at = current_timestamp 
         where wallet_id = v_wallet_id; 
 
        v_purchase_id := purchase_id_seq.nextval; 
 
        insert into purchases ( 
            purchase_id, 
            user_id, 
            purchase_type, 
            payment_method, 
            status, 
            purchase_date 
        ) values ( 
            v_purchase_id, 
            p_user_id, 
            'game', 
            'wallet', 
            'completed', 
            current_timestamp 
        ); 
 
        for i in 1 .. p_game_ids.count loop 
            insert into purchases_item ( 
                purchase_item_id, 
                game_id, 
                purchase_id, 
                price_at_purchase 
            ) values ( 
                purchase_item_id_seq.nextval, 
                p_game_ids(i), 
                v_purchase_id, 
                l_prices(i) 
            ); 
 
            insert into library ( 
                user_id, 
                game_id, 
                purchase_id, 
                added_date 
            ) 
            select p_user_id, 
                   p_game_ids(i), 
                   v_purchase_id, 
                   sysdate 
              from dual 
             where not exists ( 
                   select 1 
                     from library l 
                    where l.user_id = p_user_id 
                      and l.game_id = p_game_ids(i) 
             ); 
        end loop; 
 
        commit; 
    exception 
        when others then 
            rollback; 
            raise; 
    end purchase_game; 
 
    procedure refund_purchase(p_user_id in number, p_purchase_id in number) is 
        v_wallet_id     wallets.wallet_id%type; 
        v_total_refund  number := 0; 
        v_status_count  number; 
    begin 
        select count(*) 
          into v_status_count 
          from purchases 
         where purchase_id = p_purchase_id 
           and user_id = p_user_id 
           and lower(status) = 'completed'; 
 
        if v_status_count = 0 then 
            raise_application_error(-20006, 'Only completed purchases owned by this user can be refunded'); 
        end if; 
 
        select nvl(sum(price_at_purchase), 0) 
          into v_total_refund 
          from purchases_item 
         where purchase_id = p_purchase_id; 
 
        if v_total_refund <= 0 then 
            raise_application_error(-20007, 'Nothing to refund because purchase item prices are zero'); 
        end if; 
 
        select wallet_id 
          into v_wallet_id 
          from ( 
              select wallet_id 
                from wallets 
               where user_id = p_user_id 
               order by updated_at desc, wallet_id desc 
          ) 
         where rownum = 1; 
 
        update wallets 
           set balance = balance + v_total_refund, 
               updated_at = current_timestamp 
         where wallet_id = v_wallet_id; 
 
        update purchases 
           set status = 'REFUNDED' 
         where purchase_id = p_purchase_id 
           and user_id = p_user_id; 
 
        delete from library 
         where user_id = p_user_id 
           and purchase_id = p_purchase_id; 
 
        commit; 
    exception 
        when others then 
            rollback; 
            raise; 
    end refund_purchase; 
 
    procedure gift_game(p_sender_id number, p_receiver_id number, p_game_id number) is 
    begin 
        gift_game(p_sender_id, p_receiver_id, t_id_list(p_game_id)); 
    end gift_game; 
 
    procedure gift_game(p_sender_id number, p_receiver_id number, p_game_ids t_id_list) is 
    begin 
        for i in 1 .. p_game_ids.count loop 
            insert into library (user_id, game_id, added_date) 
            values (p_receiver_id, p_game_ids(i), sysdate); 
        end loop; 
 
        commit; 
    end gift_game; 
 
    procedure update_game_price(p_game_id number, p_new_price number) is 
    begin 
        update games 
           set price = p_new_price 
         where game_id = p_game_id; 
 
        commit; 
    end update_game_price; 
 
    procedure update_game_price(p_game_ids t_id_list, p_new_prices t_price_list) is 
    begin 
        for i in 1 .. p_game_ids.count loop 
            update games 
               set price = p_new_prices(i) 
             where game_id = p_game_ids(i); 
        end loop; 
 
        commit; 
    end update_game_price; 
 
    function get_recommended_ids(p_user_id number) return t_id_list pipelined is 
    begin 
        for rec in ( 
            select g.game_id 
              from games g 
             where not exists ( 
                   select 1 
                     from library l 
                    where l.user_id = p_user_id 
                      and l.game_id = g.game_id 
             ) 
               and rownum <= 3 
        ) loop 
            pipe row(rec.game_id); 
        end loop; 
 
        return; 
    end get_recommended_ids; 
 
end "PKG_STORE_PURCHASE";
/ 


create or replace package "PKG_USER_ACCOUNT" as

    PROCEDURE create_user(
    p_username users.username%TYPE,
    p_email users.email%TYPE,
    p_password VARCHAR2
);

    PROCEDURE del_user(
    p_user_id IN NUMBER 
);

    PROCEDURE update_user(
    p_user_name varchar2,
    p_password varchar2,
    p_new_user_name varchar2,
    p_new_password varchar2,
    p_new_email varchar2
);

    PROCEDURE add_funds (
    p_user_id NUMBER,
    p_fund    NUMBER
);

    FUNCTION get_total_spent(
        p_user_id NUMBER
) RETURN NUMBER;

    FUNCTION get_user_balance (
    p_user_id users.user_id%TYPE
) RETURN NUMBER;

    FUNCTION get_user_game_count(
    p_user_id NUMBER
) RETURN NUMBER;

    FUNCTION my_authentication(
        p_username varchar2,
        p_password varchar2
        ) RETURN boolean;
end "PKG_USER_ACCOUNT";
/ 
create or replace package body "PKG_USER_ACCOUNT" as

    procedure create_user(
        p_username users.username%type,
        p_email    users.email%type,
        p_password varchar2
    ) is
    begin
        insert into users (
            user_id,
            username,
            email,
            password_hash,
            created_at
        ) values (
            user_id_seq.nextval,
            p_username,
            p_email,
            lower(rawtohex(standard_hash(p_password, 'SHA256'))),
            sysdate
        );

        commit;
    end create_user;


    procedure del_user(
        p_user_id in number
    ) is
        v_user_name varchar2(100);
    begin
        select username
          into v_user_name
          from users
         where user_id = p_user_id;

        delete from users
         where user_id = p_user_id;

        commit;
    exception
        when no_data_found then
            raise_application_error(-20120, 'User not found.');
        when others then
            rollback;
            raise;
    end del_user;


    procedure "UPDATE_USER"(
        p_user_name     varchar2,
        p_password      varchar2,
        p_new_user_name varchar2,
        p_new_password  varchar2,
        p_new_email     varchar2
    ) is
        v_id number;
    begin
        select user_id
          into v_id
          from users
         where upper(username) = upper(p_user_name)
           and lower(password_hash) = lower(rawtohex(standard_hash(p_password, 'SHA256')));

        update users
           set username = case
                              when trim(p_new_user_name) is not null then p_new_user_name
                              else username
                          end,
               password_hash = case
                                   when trim(p_new_password) is not null
                                   then lower(rawtohex(standard_hash(p_new_password, 'SHA256')))
                                   else password_hash
                               end,
               email = case
                           when trim(p_new_email) is not null then p_new_email
                           else email
                       end
         where user_id = v_id;

        commit;
    exception
        when no_data_found then
            raise_application_error(-20121, 'Access denied: wrong username or password.');
        when others then
            rollback;
            raise;
    end "UPDATE_USER";


    procedure add_funds (
        p_user_id number,
        p_fund    number
    ) is
        v_wallet_id   wallets.wallet_id%type;
        v_new_balance wallets.balance%type;
    begin
        if p_fund <= 0 then
            raise_application_error(-20122, 'Fund amount must be positive.');
        end if;

        begin
            select wallet_id,
                   balance + p_fund
              into v_wallet_id,
                   v_new_balance
              from (
                  select wallet_id,
                         balance
                    from wallets
                   where user_id = p_user_id
                   order by updated_at desc, wallet_id desc
              )
             where rownum = 1;

            update wallets
               set balance = v_new_balance,
                   updated_at = current_timestamp
             where wallet_id = v_wallet_id;

        exception
            when no_data_found then
                insert into wallets (
                    wallet_id,
                    user_id,
                    currency,
                    balance,
                    updated_at
                ) values (
                    wallet_id_seq.nextval,
                    p_user_id,
                    'USD',
                    p_fund,
                    current_timestamp
                );
        end;

        commit;
    exception
        when others then
            rollback;
            raise;
    end add_funds;


    function get_total_spent(p_user_id number)
    return number is
        v_total number;
    begin
        select nvl(sum(pi.price_at_purchase), 0)
          into v_total
          from purchases p
          join purchases_item pi on pi.purchase_id = p.purchase_id
         where p.user_id = p_user_id
           and lower(p.status) in ('completed', 'refunded');

        return v_total;
    exception
        when no_data_found then
            return 0;
    end get_total_spent;


    function get_user_balance(
        p_user_id users.user_id%type
    ) return number is
        v_balance number;
    begin
        select balance
          into v_balance
          from (
              select balance
                from wallets
               where user_id = p_user_id
               order by updated_at desc, wallet_id desc
          )
         where rownum = 1;

        return v_balance;
    exception
        when no_data_found then
            return 0;
    end get_user_balance;


    function get_user_game_count(
        p_user_id number
    ) return number is
        v_count number;
    begin
        select count(*)
          into v_count
          from library
         where user_id = p_user_id;

        return v_count;
    end get_user_game_count;


    function my_authentication(
        p_username in varchar2,
        p_password in varchar2
    ) return boolean is
        l_hash       users.password_hash%type;
        l_input_hash users.password_hash%type;
    begin
        select lower(rawtohex(standard_hash(p_password, 'SHA256')))
          into l_input_hash
          from dual;

        if upper(p_username) = 'ADMIN'
           and lower(l_input_hash) = lower(v('APP_ADMIN_HASH')) then
            return true;
        end if;

        begin
            select password_hash
              into l_hash
              from users
             where upper(username) = upper(p_username);
        exception
            when no_data_found then
                return false;
        end;

        return lower(l_hash) = lower(l_input_hash);
    end my_authentication;

end "PKG_USER_ACCOUNT";
/