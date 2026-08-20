-- Compile-ready reporting views for APEX pages.
-- Replace or merge with Object Browser view exports when the real views are provided.

CREATE OR REPLACE VIEW v_game_catalog AS
SELECT g.game_id,
       g.title,
       g.price,
       g.release_date,
       g.age_rating,
       DBMS_LOB.SUBSTR(g.description, 4000, 1) AS description_preview,
       d.developer_id,
       d.developer_name,
       LISTAGG(c.category_name, ', ') WITHIN GROUP (ORDER BY c.category_name) AS categories
  FROM games g
  LEFT JOIN developers d ON d.developer_id = g.developer_id
  LEFT JOIN game_categories gc ON gc.game_id = g.game_id
  LEFT JOIN categories c ON c.category_id = gc.category_id
 GROUP BY g.game_id,
          g.title,
          g.price,
          g.release_date,
          g.age_rating,
          DBMS_LOB.SUBSTR(g.description, 4000, 1),
          d.developer_id,
          d.developer_name;

CREATE OR REPLACE VIEW v_user_library AS
SELECT l.user_id,
       u.username,
       l.game_id,
       g.title,
       g.price AS current_price,
       l.purchase_id,
       l.added_date,
       p.purchase_date,
       p.status AS purchase_status,
       d.developer_name
  FROM library l
  JOIN users u ON u.user_id = l.user_id
  JOIN games g ON g.game_id = l.game_id
  LEFT JOIN developers d ON d.developer_id = g.developer_id
  LEFT JOIN purchases p ON p.purchase_id = l.purchase_id;

CREATE OR REPLACE VIEW v_purchase_summary AS
SELECT p.purchase_id,
       p.user_id,
       u.username,
       p.purchase_type,
       p.payment_method,
       p.status,
       p.purchase_date,
       p.promo_id,
       pr.code AS promo_code,
       COUNT(pi.purchase_item_id) AS item_count,
       NVL(SUM(pi.price_at_purchase), 0) AS total_amount
  FROM purchases p
  JOIN users u ON u.user_id = p.user_id
  LEFT JOIN promotions pr ON pr.promo_id = p.promo_id
  LEFT JOIN purchases_item pi ON pi.purchase_id = p.purchase_id
 GROUP BY p.purchase_id,
          p.user_id,
          u.username,
          p.purchase_type,
          p.payment_method,
          p.status,
          p.purchase_date,
          p.promo_id,
          pr.code;

CREATE OR REPLACE VIEW v_user_stats AS
SELECT u.user_id,
       u.username,
       u.email,
       u.created_at,
       w.currency,
       w.balance,
       NVL(lib.games_owned, 0) AS games_owned,
       NVL(sess.sessions_count, 0) AS sessions_count,
       NVL(sess.minutes_played, 0) AS minutes_played,
       NVL(ach.achievements_unlocked, 0) AS achievements_unlocked,
       NVL(bdg.badges_count, 0) AS badges_count
  FROM users u
  LEFT JOIN (
      SELECT user_id,
             currency,
             balance
        FROM (
            SELECT w.*,
                   ROW_NUMBER() OVER (
                       PARTITION BY user_id
                       ORDER BY updated_at DESC, wallet_id DESC
                   ) AS rn
              FROM wallets w
        )
       WHERE rn = 1
  ) w ON w.user_id = u.user_id
  LEFT JOIN (
      SELECT user_id,
             COUNT(*) AS games_owned
        FROM library
       GROUP BY user_id
  ) lib ON lib.user_id = u.user_id
  LEFT JOIN (
      SELECT user_id,
             COUNT(*) AS sessions_count,
             ROUND(NVL(SUM(
                 CASE
                     WHEN end_time IS NOT NULL AND start_time IS NOT NULL
                     THEN (CAST(end_time AS DATE) - CAST(start_time AS DATE)) * 24 * 60
                 END
             ), 0), 2) AS minutes_played
        FROM sessions
       GROUP BY user_id
  ) sess ON sess.user_id = u.user_id
  LEFT JOIN (
      SELECT user_id,
             COUNT(*) AS achievements_unlocked
        FROM user_achievements
       GROUP BY user_id
  ) ach ON ach.user_id = u.user_id
  LEFT JOIN (
      SELECT user_id,
             COUNT(*) AS badges_count
        FROM badges
       GROUP BY user_id
  ) bdg ON bdg.user_id = u.user_id;

CREATE OR REPLACE VIEW v_game_review_summary AS
SELECT g.game_id,
       g.title,
       COUNT(r.review_id) AS review_count,
       SUM(CASE WHEN LOWER(r.review_type) = 'positive' THEN 1 ELSE 0 END) AS positive_reviews,
       SUM(CASE WHEN LOWER(r.review_type) = 'negative' THEN 1 ELSE 0 END) AS negative_reviews,
       CASE
           WHEN COUNT(r.review_id) = 0 THEN 0
           ELSE ROUND(
               SUM(CASE WHEN LOWER(r.review_type) = 'positive' THEN 1 ELSE 0 END)
               / COUNT(r.review_id) * 100,
               2
           )
       END AS positive_percent
  FROM games g
  LEFT JOIN reviews r ON r.game_id = g.game_id
 GROUP BY g.game_id,
          g.title;

CREATE OR REPLACE VIEW v_chat_threads AS
SELECT user_low_id,
       user_high_id,
       last_message_at,
       last_sender_id,
       last_receiver_id,
       last_message_preview,
       unread_for_high_user,
       unread_for_low_user
  FROM (
      SELECT LEAST(m.sender_id, m.receiver_id) AS user_low_id,
             GREATEST(m.sender_id, m.receiver_id) AS user_high_id,
             m.sent_at AS last_message_at,
             m.sender_id AS last_sender_id,
             m.receiver_id AS last_receiver_id,
             DBMS_LOB.SUBSTR(m.content, 4000, 1) AS last_message_preview,
             SUM(CASE
                     WHEN m.receiver_id = GREATEST(m.sender_id, m.receiver_id)
                      AND NVL(m.is_read, 0) = 0 THEN 1
                     ELSE 0
                 END) OVER (
                     PARTITION BY LEAST(m.sender_id, m.receiver_id),
                                  GREATEST(m.sender_id, m.receiver_id)
                 ) AS unread_for_high_user,
             SUM(CASE
                     WHEN m.receiver_id = LEAST(m.sender_id, m.receiver_id)
                      AND NVL(m.is_read, 0) = 0 THEN 1
                     ELSE 0
                 END) OVER (
                     PARTITION BY LEAST(m.sender_id, m.receiver_id),
                                  GREATEST(m.sender_id, m.receiver_id)
                 ) AS unread_for_low_user,
             ROW_NUMBER() OVER (
                 PARTITION BY LEAST(m.sender_id, m.receiver_id),
                              GREATEST(m.sender_id, m.receiver_id)
                 ORDER BY m.sent_at DESC, m.message_id DESC
             ) AS rn
        FROM messages m
       WHERE m.sender_id IS NOT NULL
         AND m.receiver_id IS NOT NULL
  )
 WHERE rn = 1;

CREATE OR REPLACE VIEW v_user_achievement_progress AS
SELECT l.user_id,
       l.game_id,
       g.title,
       COUNT(DISTINCT a.achievement_id) AS total_achievements,
       COUNT(DISTINCT ua.achievement_id) AS unlocked_achievements,
       CASE
           WHEN COUNT(DISTINCT a.achievement_id) = 0 THEN 0
           ELSE ROUND(
               COUNT(DISTINCT ua.achievement_id)
               / COUNT(DISTINCT a.achievement_id) * 100,
               2
           )
       END AS progress_percent
  FROM library l
  JOIN games g ON g.game_id = l.game_id
  LEFT JOIN achievements a ON a.game_id = l.game_id
  LEFT JOIN user_achievements ua
    ON ua.user_id = l.user_id
   AND ua.achievement_id = a.achievement_id
 GROUP BY l.user_id,
          l.game_id,
          g.title;
