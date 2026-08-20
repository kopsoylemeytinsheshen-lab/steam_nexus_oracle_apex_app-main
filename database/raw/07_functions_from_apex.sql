-- Raw standalone function DDL copied from Oracle APEX Object Browser.

create or replace FUNCTION can_user_buy_game (
    p_user_id IN users.user_id%TYPE,
    p_game_id IN games.game_id%TYPE
)
RETURN VARCHAR2 IS
    v_balance NUMBER;
    v_game_price NUMBER;
    v_count NUMBER;
    v_result VARCHAR2;
BEGIN
    -- getting price
    SELECT price INTO v_game_price
    FROM games
    WHERE game_id = p_game_id;

    -- getting balance
    SELECT balance INTO v_balance
    FROM (
        SELECT balance
        FROM wallets
        WHERE user_id = p_user_id
        ORDER BY updated_at DESC
    )
    WHERE ROWNUM = 1;

    --already bought?
    SELECT COUNT(*) INTO v_count
    FROM purchases p
    JOIN PURCHASES_ITEM pi ON p.purchase_id = pi.purchase_id
    WHERE p.user_id = p_user_id
      AND pi.game_id = p_game_id;

    --return the result
    IF v_game_price > v_balance THEN
        v_result := 'It is impossible to make a purchase. Insufficient funds';
    ELSIF v_count > 0 THEN
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

create or replace FUNCTION get_achievement_progress(
    p_user_id IN NUMBER,
    p_game_id IN NUMBER
) RETURN VARCHAR2
IS
    v_total_in_game NUMBER;
    v_user_unlocked NUMBER;
    v_res_text      VARCHAR2(100);
BEGIN

    SELECT COUNT(*) INTO v_total_in_game FROM achievements WHERE game_id = p_game_id;

    SELECT COUNT(ua.achievement_id)
    INTO v_user_unlocked
    FROM user_achievements ua
    JOIN achievements a ON ua.achievement_id = a.achievement_id
    WHERE ua.user_id = p_user_id AND a.game_id = p_game_id;

    IF v_total_in_game = 0 THEN
        RETURN '0/0 (0%)';
    END IF;

    v_res_text := v_user_unlocked || ' / ' || v_total_in_game ||
                  ' (' || ROUND((v_user_unlocked * 100.0) / v_total_in_game) || '%)';

    RETURN v_res_text;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error';
END;
/

create or replace FUNCTION get_achievement_tier (
    p_user_id IN NUMBER,
    p_game_id IN NUMBER
) RETURN VARCHAR2 IS
    v_total NUMBER;
    v_unlocked NUMBER;
    v_percent NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total FROM achievements WHERE game_id = p_game_id;
    IF v_total = 0 THEN RETURN 'No achievements in this game'; END IF;

    SELECT COUNT(*) INTO v_unlocked FROM user_achievements ua
    JOIN achievements a ON ua.achievement_id = a.achievement_id
    WHERE ua.user_id = p_user_id AND a.game_id = p_game_id;

    v_percent := (v_unlocked / v_total) * 100;

    IF v_percent = 100 THEN RETURN 'Legendary (100%)';
    ELSIF v_percent >= 50 THEN RETURN 'Advanced Hunter (' || v_percent || '%)';
    ELSIF v_percent > 0 THEN RETURN 'Beginner (' || v_percent || '%)';
    ELSE RETURN 'No progress yet';
    END IF;
END;
/

create or replace FUNCTION get_category_name(
    p_cat_id IN NUMBER
) RETURN VARCHAR2 IS
    v_name CATEGORIES.category_name%TYPE;
BEGIN
    SELECT category_name INTO v_name FROM categories WHERE category_id = p_cat_id;
    RETURN v_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN 'Unknown';
END;
/

create or replace FUNCTION get_chat_preview (
    p_user_id IN NUMBER,
    p_chat_partner_id IN NUMBER
) RETURN VARCHAR2 IS
    --collections
    TYPE t_msg_rec IS RECORD (content VARCHAR2(4000), sender_id NUMBER);
    --collections
    TYPE t_msg_tab IS TABLE OF t_msg_rec;
    --collections
    v_messages t_msg_tab;

    v_last_msg VARCHAR2(4000);
BEGIN
    --collections
    SELECT content, sender_id
    BULK COLLECT INTO v_messages
    FROM messages
    WHERE (sender_id = p_user_id AND receiver_id = p_chat_partner_id)
       OR (sender_id = p_chat_partner_id AND receiver_id = p_user_id)
    ORDER BY sent_at DESC
    FETCH FIRST 1 ROW ONLY;

    --collections
    IF v_messages.COUNT = 0 THEN
        RETURN 'No messages yet';
    END IF;

    --collections
    IF v_messages(1).sender_id = p_user_id THEN
        v_last_msg := 'You: ' || v_messages(1).content;
    ELSE
        v_last_msg := v_messages(1).content;
    END IF;

    RETURN CASE WHEN LENGTH(v_last_msg) > 30
                THEN SUBSTR(v_last_msg, 1, 27) || '...'
                ELSE v_last_msg END;
END;
/

create or replace FUNCTION get_favorite_category(p_user_id IN NUMBER)
RETURN VARCHAR2
IS
    v_category_name VARCHAR2(100);
BEGIN
    -- Select the category where the user has the most sessions.
    SELECT cat_out INTO v_category_name
    FROM (
        SELECT c.category_name as cat_out, COUNT(s.session_id) as play_count
        FROM sessions s
        JOIN games g ON s.game_id = g.game_id
        JOIN game_categories gc ON g.game_id = gc.game_id
        JOIN categories c ON gc.category_id = c.category_id
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

create or replace FUNCTION get_game_popularity (
    p_game_id IN NUMBER
) RETURN VARCHAR2 IS
    v_buyers NUMBER;
BEGIN
    -- Count unique buyers.
    SELECT COUNT(DISTINCT p.user_id) INTO v_buyers
    FROM purchases p
    JOIN purchases_item pi ON p.purchase_id = pi.purchase_id
    WHERE pi.game_id = p_game_id;

    IF v_buyers > 1000 THEN RETURN 'Bestseller';
    ELSIF v_buyers > 100 THEN RETURN 'Trending';
    ELSIF v_buyers > 0 THEN RETURN 'Niche Title';
    ELSE RETURN 'New Release / Hidden Gem';
    END IF;
END;
/

create or replace FUNCTION get_last_message_content(
    p_user1_id IN NUMBER,
    p_user2_id IN NUMBER
) RETURN VARCHAR2 IS
    v_content MESSAGES.content%TYPE;
BEGIN
    SELECT content INTO v_content
    FROM messages
    WHERE (sender_id = p_user1_id AND receiver_id = p_user2_id)
       OR (sender_id = p_user2_id AND receiver_id = p_user1_id)
    ORDER BY sent_at DESC
    FETCH FIRST 1 ROW ONLY;

    RETURN v_content;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN 'No messages';
END;
/

create or replace FUNCTION get_latest_achievement(
    p_user_id IN NUMBER
) RETURN VARCHAR2
IS
    v_result VARCHAR2(500);
BEGIN
    SELECT a.title || ' (' || TO_CHAR(ua.unlocked_at, 'DD.MM.YYYY') || ')'
    INTO v_result
    FROM achievements a
    JOIN user_achievements ua ON a.achievement_id = ua.achievement_id
    WHERE ua.user_id = p_user_id
    ORDER BY ua.unlocked_at DESC
    FETCH FIRST 1 ROW ONLY;

    RETURN v_result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No achievements yet';
END;
/

create or replace FUNCTION get_player_tier(p_user_id IN NUMBER)
RETURN VARCHAR2
IS
    v_total_spent   NUMBER := 0;
    v_achievements  NUMBER := 0;
    v_total_hours   NUMBER := 0;
    v_tier          VARCHAR2(20);
BEGIN

    SELECT NVL(SUM(p.price_at_purchase), 0)
    INTO v_total_spent
    FROM purchases_item p
    JOIN purchases pr ON p.purchase_id = pr.purchase_id
    WHERE pr.user_id = p_user_id AND pr.status = 'Completed';

    SELECT COUNT(*) INTO v_achievements
    FROM user_achievements
    WHERE user_id = p_user_id;

    SELECT NVL(SUM(EXTRACT(HOUR FROM (end_time - start_time))), 0)
    INTO v_total_hours
    FROM sessions
    WHERE user_id = p_user_id;

    IF v_total_spent > 500 AND v_achievements > 50 THEN
        v_tier := 'Legendary';
    ELSIF v_total_spent > 100 OR v_total_hours > 100 THEN
        v_tier := 'Veteran';
    ELSE
        v_tier := 'Newbie';
    END IF;

    RETURN v_tier;
END;
/

create or replace FUNCTION get_social_status (
    p_user_id IN NUMBER,
    p_target_id IN NUMBER
) RETURN VARCHAR2 IS
    v_is_friend NUMBER;
    v_msg_count NUMBER;
BEGIN
    -- Are they friends?
    SELECT COUNT(*) INTO v_is_friend FROM friends
    WHERE (user_id = p_user_id AND friend_id = p_target_id)
       OR (user_id = p_target_id AND friend_id = p_user_id);

    -- Do they have messages?
    SELECT COUNT(*) INTO v_msg_count FROM messages
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

create or replace FUNCTION get_total_spent(p_user_id NUMBER)
RETURN NUMBER IS
    v_total NUMBER;
BEGIN
    -- getting sum of game prices
    SELECT NVL(SUM(g.price), 0) INTO v_total
    FROM library l
    JOIN games g ON g.game_id = l.game_id
    WHERE l.user_id = p_user_id;

    --returning result
    RETURN v_total;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/

create or replace FUNCTION get_unread_summary (
    p_user_id IN NUMBER
) RETURN VARCHAR2 IS
    --collections
    TYPE t_sender_count IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    --collections
    v_unread_by_sender t_sender_count;

    v_total_count NUMBER := 0;
BEGIN
    --collections
    FOR rec IN (SELECT sender_id FROM messages WHERE receiver_id = p_user_id AND is_read = 0) LOOP
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
        --collections
        RETURN 'You have ' || v_total_count || ' unread messages from ' || v_unread_by_sender.COUNT || ' chats. Check your inbox!';
    END IF;
END;
/

create or replace FUNCTION get_user_achievement_count(
    p_user_id IN NUMBER
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM user_achievements
    WHERE user_id = p_user_id;
    RETURN v_count;
END;
/

create or replace FUNCTION get_user_balance (
    p_user_id users.user_id%TYPE
)
RETURN NUMBER IS
    v_balance NUMBER;
BEGIN
    -- getting current balance
    SELECT balance INTO v_balance
    FROM (
        SELECT balance
        FROM wallets
        WHERE user_id = p_user_id
        ORDER BY updated_at DESC
    )
    WHERE ROWNUM = 1;

    -- return result
    RETURN v_balance;
END;
/

create or replace FUNCTION get_user_game_count(
    p_user_id NUMBER
    )
RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    -- getting count of games in library
    SELECT COUNT(*) INTO v_count
    FROM library
    WHERE user_id = p_user_id;

    --returnin result
    RETURN v_count;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/

create or replace function "LATEST" (p_user_id in number)
return varchar2
is v_result varchar2(100);
begin
    select a.game_id
    into v_result
    from achievements a
    join user_achievements ua on a.achievement_id = ua.achievement_id
    where ua.user_id = p_user_id
    order by ua.unlocked_at DESC
    fetch first 1 row only;
    return v_result;
exception
    when NO_DATA_FOUND then
        return 'No ach';

    when others then
        return 'error';
end "LATEST";
/

create or replace FUNCTION recommend_game (
    p_user_id NUMBER
)
RETURN VARCHAR2 IS
    v_category VARCHAR2(100);
    v_count NUMBER;
    v_random_idx NUMBER;

    --collections
    TYPE t_game_titles IS TABLE OF VARCHAR2(255);
    --collections
    v_candidates t_game_titles;
BEGIN
    -- check if user has at least one game
    SELECT COUNT(*) INTO v_count
    FROM library
    WHERE user_id = p_user_id;

    IF v_count = 0 THEN
        RETURN 'There is not enough data for a recommendation';
    END IF;

    -- getting the most frequent category
    SELECT category_name INTO v_category
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

    -- getting a random game from the selected category that user does not own
    --collections
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

    --collections
    IF v_candidates.COUNT > 0 THEN
        v_random_idx := TRUNC(DBMS_RANDOM.VALUE(1, v_candidates.COUNT + 1));
        RETURN 'Recommended game is: ' || v_candidates(v_random_idx);
    ELSE
        RETURN 'No available games to recommend in your favorite category';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No available games to recommend in your favorite category';
END;
/

