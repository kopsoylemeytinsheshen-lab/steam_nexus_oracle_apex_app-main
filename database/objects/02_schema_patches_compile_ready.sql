-- Patch layer for the Oracle APEX schema copied from Object Browser.
-- Run after table creation and before packages.

ALTER TABLE wallets ADD CONSTRAINT fk_wallets_users
    FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE purchases_item ADD CONSTRAINT fk_pi_games
    FOREIGN KEY (game_id) REFERENCES games (game_id);

ALTER TABLE purchases_item ADD CONSTRAINT fk_pi_purchases
    FOREIGN KEY (purchase_id) REFERENCES purchases (purchase_id);

ALTER TABLE wallets ADD CONSTRAINT chk_wallets_balance_nonnegative
    CHECK (balance >= 0);

ALTER TABLE games ADD CONSTRAINT chk_games_price_nonnegative
    CHECK (price >= 0);

ALTER TABLE promotions ADD CONSTRAINT chk_promotions_discount
    CHECK (discount_percent BETWEEN 0 AND 100);

ALTER TABLE promotions ADD CONSTRAINT chk_promotions_dates
    CHECK (start_date IS NULL OR end_date IS NULL OR start_date <= end_date);

ALTER TABLE messages ADD CONSTRAINT chk_messages_is_read
    CHECK (is_read IN (0, 1));

ALTER TABLE purchases ADD CONSTRAINT chk_purchases_status
    CHECK (status IS NULL OR LOWER(status) IN ('completed', 'pending', 'refunded', 'failed'));

ALTER TABLE purchases ADD CONSTRAINT chk_purchases_type
    CHECK (purchase_type IS NULL OR LOWER(purchase_type) IN ('game', 'dlc', 'bundle', 'in_game_purchase', 'gift'));

ALTER TABLE reviews ADD CONSTRAINT chk_reviews_type
    CHECK (review_type IS NULL OR LOWER(review_type) IN ('positive', 'negative'));

ALTER TABLE sessions ADD CONSTRAINT chk_sessions_time
    CHECK (end_time IS NULL OR start_time IS NULL OR end_time >= start_time);

ALTER TABLE friends ADD CONSTRAINT chk_friends_not_self
    CHECK (user_id <> friend_id);

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_achievements_game_id ON achievements (game_id)';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_library_user_id ON library (user_id)';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_messages_conv ON messages (sender_id, receiver_id, SYS_EXTRACT_UTC(sent_at))';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_purchases_user_id ON purchases (user_id)';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_sessions_user_end ON sessions (user_id, SYS_EXTRACT_UTC(end_time))';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_sessions_user_game ON sessions (user_id, game_id)';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_ua_achievement_id ON user_achievements (achievement_id)';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_wallets_user_updated ON wallets (user_id, SYS_EXTRACT_UTC(updated_at))';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE NOT IN (-955, -1408) THEN
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE TRIGGER ddl_log_trg
AFTER DDL ON SCHEMA
BEGIN
    IF ORA_DICT_OBJ_NAME <> 'DDL_LOG' THEN
        INSERT INTO ddl_log (
            username,
            object_name,
            object_type,
            action_type,
            action_date
        ) VALUES (
            SYS_CONTEXT('USERENV', 'SESSION_USER'),
            ORA_DICT_OBJ_NAME,
            ORA_DICT_OBJ_TYPE,
            ORA_SYSEVENT,
            CURRENT_TIMESTAMP
        );
    END IF;
END;
/

CREATE OR REPLACE TRIGGER normalization_email_trg
BEFORE INSERT OR UPDATE OF email ON users
FOR EACH ROW
BEGIN
    :NEW.email := LOWER(TRIM(:NEW.email));
END;
/

CREATE OR REPLACE TRIGGER trg_prevent_negative_price
BEFORE INSERT OR UPDATE OF price ON games
FOR EACH ROW
BEGIN
    IF :NEW.price < 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Operation cancelled: Game price cannot be negative.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_update_wallet_time
BEFORE UPDATE OF balance ON wallets
FOR EACH ROW
BEGIN
    :NEW.updated_at := CURRENT_TIMESTAMP;
END;
/

CREATE OR REPLACE TRIGGER trg_add_to_library
AFTER INSERT OR UPDATE OF status ON purchases
FOR EACH ROW
BEGIN
    IF LOWER(:NEW.status) = 'completed' THEN
        IF INSERTING OR LOWER(NVL(:OLD.status, '~')) <> 'completed' THEN
            INSERT INTO library (game_id, user_id, purchase_id, added_date)
            SELECT pi.game_id,
                   :NEW.user_id,
                   :NEW.purchase_id,
                   CURRENT_TIMESTAMP
              FROM purchases_item pi
             WHERE pi.purchase_id = :NEW.purchase_id
               AND NOT EXISTS (
                   SELECT 1
                     FROM library l
                    WHERE l.user_id = :NEW.user_id
                      AND l.game_id = pi.game_id
               );
        END IF;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_friendship_cleanup
AFTER DELETE ON friends
FOR EACH ROW
BEGIN
    DELETE FROM messages
     WHERE (sender_id = :OLD.user_id AND receiver_id = :OLD.friend_id)
        OR (sender_id = :OLD.friend_id AND receiver_id = :OLD.user_id);
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER trg_check_achievement';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4080 THEN
            RAISE;
        END IF;
END;
/
