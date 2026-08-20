-- Compile-ready standalone functions for the Steam Nexus APEX schema.

CREATE OR REPLACE FUNCTION can_user_buy_game (
    p_user_id IN users.user_id%TYPE,
    p_game_id IN games.game_id%TYPE
) RETURN VARCHAR2 IS
    v_balance NUMBER;
    v_currency wallets.currency%TYPE;
    v_game_price games.price%TYPE;
    v_owned_count NUMBER;
    v_result VARCHAR2(200);

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

    IF convert_price(v_game_price, v_currency) > v_balance THEN
        v_result := 'It is impossible to make a purchase. Insufficient funds';
    ELSIF v_owned_count > 0 THEN
        v_result := 'It is impossible to make a purchase. The game has already been purchased';
    ELSE
        v_result := 'It is possible to make a purchase';
    END IF;

    RETURN v_result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'User or game not found';
END;
/

CREATE OR REPLACE FUNCTION get_achievement_progress(
    p_user_id IN NUMBER,
    p_game_id IN NUMBER
) RETURN VARCHAR2 IS
    v_total_in_game NUMBER;
    v_user_unlocked NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_total_in_game
      FROM achievements
     WHERE game_id = p_game_id;

    SELECT COUNT(ua.achievement_id)
      INTO v_user_unlocked
      FROM user_achievements ua
      JOIN achievements a ON a.achievement_id = ua.achievement_id
     WHERE ua.user_id = p_user_id
       AND a.game_id = p_game_id;

    IF v_total_in_game = 0 THEN
        RETURN '0 / 0 (0%)';
    END IF;

    RETURN v_user_unlocked || ' / ' || v_total_in_game ||
           ' (' || ROUND((v_user_unlocked * 100) / v_total_in_game) || '%)';
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error';
END;
/

CREATE OR REPLACE FUNCTION get_achievement_tier(
    p_user_id IN NUMBER,
    p_game_id IN NUMBER
) RETURN VARCHAR2 IS
    v_total NUMBER;
    v_unlocked NUMBER;
    v_percent NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_total
      FROM achievements
     WHERE game_id = p_game_id;

    IF v_total = 0 THEN
        RETURN 'No achievements in this game';
    END IF;

    SELECT COUNT(*)
      INTO v_unlocked
      FROM user_achievements ua
      JOIN achievements a ON a.achievement_id = ua.achievement_id
     WHERE ua.user_id = p_user_id
       AND a.game_id = p_game_id;

    v_percent := ROUND((v_unlocked / v_total) * 100);

    IF v_percent = 100 THEN
        RETURN 'Legendary (100%)';
    ELSIF v_percent >= 50 THEN
        RETURN 'Advanced Hunter (' || v_percent || '%)';
    ELSIF v_percent > 0 THEN
        RETURN 'Beginner (' || v_percent || '%)';
    ELSE
        RETURN 'No progress yet';
    END IF;
END;
/

CREATE OR REPLACE FUNCTION get_category_name(
    p_cat_id IN NUMBER
) RETURN VARCHAR2 IS
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
END;
/

CREATE OR REPLACE FUNCTION get_chat_preview(
    p_user_id IN NUMBER,
    p_chat_partner_id IN NUMBER
) RETURN VARCHAR2 IS
    TYPE t_msg_rec IS RECORD (
        content VARCHAR2(4000),
        sender_id NUMBER
    );
    TYPE t_msg_tab IS TABLE OF t_msg_rec;

    v_messages t_msg_tab;
    v_last_msg VARCHAR2(4000);
BEGIN
    SELECT DBMS_LOB.SUBSTR(content, 4000, 1), sender_id
      BULK COLLECT INTO v_messages
      FROM messages
     WHERE (sender_id = p_user_id AND receiver_id = p_chat_partner_id)
        OR (sender_id = p_chat_partner_id AND receiver_id = p_user_id)
     ORDER BY sent_at DESC, message_id DESC
     FETCH FIRST 1 ROW ONLY;

    IF v_messages.COUNT = 0 THEN
        RETURN 'No messages yet';
    END IF;

    IF v_messages(1).sender_id = p_user_id THEN
        v_last_msg := 'You: ' || v_messages(1).content;
    ELSE
        v_last_msg := v_messages(1).content;
    END IF;

    RETURN CASE
               WHEN LENGTH(v_last_msg) > 30 THEN SUBSTR(v_last_msg, 1, 27) || '...'
               ELSE v_last_msg
           END;
END;
/

CREATE OR REPLACE FUNCTION get_favorite_category(
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
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
END;
/

CREATE OR REPLACE FUNCTION get_game_popularity(
    p_game_id IN NUMBER
) RETURN VARCHAR2 IS
    v_buyers NUMBER;
BEGIN
    SELECT COUNT(DISTINCT p.user_id)
      INTO v_buyers
      FROM purchases p
      JOIN purchases_item pi ON pi.purchase_id = p.purchase_id
     WHERE pi.game_id = p_game_id
       AND (p.status IS NULL OR LOWER(p.status) = 'completed');

    IF v_buyers > 1000 THEN
        RETURN 'Bestseller';
    ELSIF v_buyers > 100 THEN
        RETURN 'Trending';
    ELSIF v_buyers > 0 THEN
        RETURN 'Niche Title';
    ELSE
        RETURN 'New Release / Hidden Gem';
    END IF;
END;
/

CREATE OR REPLACE FUNCTION get_last_message_content(
    p_user1_id IN NUMBER,
    p_user2_id IN NUMBER
) RETURN VARCHAR2 IS
    v_content VARCHAR2(4000);
BEGIN
    SELECT DBMS_LOB.SUBSTR(content, 4000, 1)
      INTO v_content
      FROM messages
     WHERE (sender_id = p_user1_id AND receiver_id = p_user2_id)
        OR (sender_id = p_user2_id AND receiver_id = p_user1_id)
     ORDER BY sent_at DESC, message_id DESC
     FETCH FIRST 1 ROW ONLY;

    RETURN v_content;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No messages';
END;
/

CREATE OR REPLACE FUNCTION get_latest_achievement(
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
    v_result VARCHAR2(500);
BEGIN
    SELECT a.title || ' (' || TO_CHAR(ua.unlocked_at, 'DD.MM.YYYY') || ')'
      INTO v_result
      FROM achievements a
      JOIN user_achievements ua ON ua.achievement_id = a.achievement_id
     WHERE ua.user_id = p_user_id
     ORDER BY ua.unlocked_at DESC NULLS LAST, ua.achievement_id DESC
     FETCH FIRST 1 ROW ONLY;

    RETURN v_result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No achievements yet';
END;
/

CREATE OR REPLACE FUNCTION get_player_tier(
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
    v_total_spent NUMBER := 0;
    v_achievements NUMBER := 0;
    v_total_hours NUMBER := 0;
BEGIN
    SELECT NVL(SUM(pi.price_at_purchase), 0)
      INTO v_total_spent
      FROM purchases_item pi
      JOIN purchases p ON p.purchase_id = pi.purchase_id
     WHERE p.user_id = p_user_id
       AND LOWER(NVL(p.status, 'completed')) = 'completed';

    SELECT COUNT(*)
      INTO v_achievements
      FROM user_achievements
     WHERE user_id = p_user_id;

    SELECT ROUND(NVL(SUM(
               CASE
                   WHEN end_time IS NOT NULL AND start_time IS NOT NULL
                   THEN (CAST(end_time AS DATE) - CAST(start_time AS DATE)) * 24
               END
           ), 0), 2)
      INTO v_total_hours
      FROM sessions
     WHERE user_id = p_user_id;

    IF v_total_spent > 500 AND v_achievements > 50 THEN
        RETURN 'Legendary';
    ELSIF v_total_spent > 100 OR v_total_hours > 100 THEN
        RETURN 'Veteran';
    ELSE
        RETURN 'Newbie';
    END IF;
END;
/

CREATE OR REPLACE FUNCTION get_social_status(
    p_user_id IN NUMBER,
    p_target_id IN NUMBER
) RETURN VARCHAR2 IS
    v_is_friend NUMBER;
    v_msg_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_is_friend
      FROM friends
     WHERE (user_id = p_user_id AND friend_id = p_target_id)
        OR (user_id = p_target_id AND friend_id = p_user_id);

    SELECT COUNT(*)
      INTO v_msg_count
      FROM messages
     WHERE (sender_id = p_user_id AND receiver_id = p_target_id)
        OR (sender_id = p_target_id AND receiver_id = p_user_id);

    IF v_is_friend > 0 THEN
        RETURN 'They are friends';
    ELSIF v_msg_count > 0 THEN
        RETURN 'Not friends, but have a chat history';
    ELSE
        RETURN 'No connection';
    END IF;
END;
/

CREATE OR REPLACE FUNCTION get_total_spent(
    p_user_id NUMBER
) RETURN NUMBER IS
    v_total NUMBER;
BEGIN
    SELECT NVL(SUM(pi.price_at_purchase), 0)
      INTO v_total
      FROM purchases p
      JOIN purchases_item pi ON pi.purchase_id = p.purchase_id
     WHERE p.user_id = p_user_id
       AND LOWER(NVL(p.status, 'completed')) IN ('completed', 'refunded');

    RETURN v_total;
END;
/

CREATE OR REPLACE FUNCTION get_unread_summary(
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
    TYPE t_sender_count IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_unread_by_sender t_sender_count;
    v_total_count NUMBER := 0;
BEGIN
    FOR rec IN (
        SELECT sender_id
          FROM messages
         WHERE receiver_id = p_user_id
           AND NVL(is_read, 0) = 0
           AND sender_id IS NOT NULL
    ) LOOP
        IF v_unread_by_sender.EXISTS(rec.sender_id) THEN
            v_unread_by_sender(rec.sender_id) := v_unread_by_sender(rec.sender_id) + 1;
        ELSE
            v_unread_by_sender(rec.sender_id) := 1;
        END IF;

        v_total_count := v_total_count + 1;
    END LOOP;

    IF v_total_count = 0 THEN
        RETURN 'Your inbox is clear';
    ELSIF v_total_count = 1 THEN
        RETURN 'You have 1 new message';
    ELSE
        RETURN 'You have ' || v_total_count || ' unread messages from ' ||
               v_unread_by_sender.COUNT || ' chats. Check your inbox!';
    END IF;
END;
/

CREATE OR REPLACE FUNCTION get_user_achievement_count(
    p_user_id IN NUMBER
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM user_achievements
     WHERE user_id = p_user_id;

    RETURN v_count;
END;
/

CREATE OR REPLACE FUNCTION get_user_balance(
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
END;
/

CREATE OR REPLACE FUNCTION get_user_game_count(
    p_user_id NUMBER
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM library
     WHERE user_id = p_user_id;

    RETURN v_count;
END;
/

CREATE OR REPLACE FUNCTION "LATEST"(
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
    v_result VARCHAR2(100);
BEGIN
    SELECT TO_CHAR(a.game_id)
      INTO v_result
      FROM achievements a
      JOIN user_achievements ua ON ua.achievement_id = a.achievement_id
     WHERE ua.user_id = p_user_id
     ORDER BY ua.unlocked_at DESC NULLS LAST, ua.achievement_id DESC
     FETCH FIRST 1 ROW ONLY;

    RETURN v_result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No ach';
    WHEN OTHERS THEN
        RETURN 'error';
END "LATEST";
/

CREATE OR REPLACE FUNCTION recommend_game(
    p_user_id NUMBER
) RETURN VARCHAR2 IS
    v_category categories.category_name%TYPE;
    v_count NUMBER;
    v_random_idx NUMBER;

    TYPE t_game_titles IS TABLE OF games.title%TYPE;
    v_candidates t_game_titles;
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
          SELECT c.category_name
            FROM categories c
            JOIN game_categories gc ON gc.category_id = c.category_id
            JOIN library l ON l.game_id = gc.game_id
           WHERE l.user_id = p_user_id
           GROUP BY c.category_name
           ORDER BY COUNT(*) DESC
      )
     WHERE ROWNUM = 1;

    SELECT g.title
      BULK COLLECT INTO v_candidates
      FROM games g
      JOIN game_categories gc ON gc.game_id = g.game_id
      JOIN categories c ON c.category_id = gc.category_id
     WHERE c.category_name = v_category
       AND NOT EXISTS (
           SELECT 1
             FROM library l
            WHERE l.user_id = p_user_id
              AND l.game_id = g.game_id
       );

    IF v_candidates.COUNT > 0 THEN
        v_random_idx := TRUNC(DBMS_RANDOM.VALUE(1, v_candidates.COUNT + 1));
        RETURN 'Recommended game is: ' || v_candidates(v_random_idx);
    END IF;

    RETURN 'No available games to recommend in your favorite category';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No available games to recommend in your favorite category';
END;
/

