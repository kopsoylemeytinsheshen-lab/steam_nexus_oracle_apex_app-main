-- Compile-ready triggers for the Steam Nexus APEX schema.

BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER ddl_log_trg';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4080 THEN
            RAISE;
        END IF;
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

CREATE OR REPLACE TRIGGER trg_ddl_log
AFTER DDL ON SCHEMA
DECLARE
    v_user VARCHAR2(100);
BEGIN
    v_user := COALESCE(
        SYS_CONTEXT('APEX$SESSION', 'APP_USER'),
        SYS_CONTEXT('USERENV', 'SESSION_USER')
    );

    IF ORA_DICT_OBJ_NAME <> 'DDL_LOG' THEN
        INSERT INTO ddl_log (
            username,
            object_name,
            object_type,
            action_type,
            action_date
        ) VALUES (
            v_user,
            ORA_DICT_OBJ_NAME,
            ORA_DICT_OBJ_TYPE,
            ORA_SYSEVENT,
            SYSTIMESTAMP
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

CREATE OR REPLACE TRIGGER user_audit_trg
FOR INSERT OR UPDATE OR DELETE ON users
COMPOUND TRIGGER
    TYPE t_audit_rec IS RECORD (
        user_id NUMBER,
        action_type VARCHAR2(10),
        old_username VARCHAR2(255),
        new_username VARCHAR2(255)
    );

    TYPE t_audit_tab IS TABLE OF t_audit_rec;
    v_audit_logs t_audit_tab := t_audit_tab();

AFTER EACH ROW IS
BEGIN
    v_audit_logs.EXTEND;

    IF INSERTING THEN
        v_audit_logs(v_audit_logs.LAST).user_id := :NEW.user_id;
        v_audit_logs(v_audit_logs.LAST).action_type := 'INSERT';
        v_audit_logs(v_audit_logs.LAST).new_username := :NEW.username;
    ELSIF UPDATING THEN
        v_audit_logs(v_audit_logs.LAST).user_id := :OLD.user_id;
        v_audit_logs(v_audit_logs.LAST).action_type := 'UPDATE';
        v_audit_logs(v_audit_logs.LAST).old_username := :OLD.username;
        v_audit_logs(v_audit_logs.LAST).new_username := :NEW.username;
    ELSIF DELETING THEN
        v_audit_logs(v_audit_logs.LAST).user_id := :OLD.user_id;
        v_audit_logs(v_audit_logs.LAST).action_type := 'DELETE';
        v_audit_logs(v_audit_logs.LAST).old_username := :OLD.username;
    END IF;
END AFTER EACH ROW;

AFTER STATEMENT IS
BEGIN
    IF v_audit_logs.COUNT > 0 THEN
        FORALL i IN 1 .. v_audit_logs.COUNT
            INSERT INTO user_audit_log (
                user_id,
                action_type,
                old_username,
                new_username,
                action_date
            ) VALUES (
                v_audit_logs(i).user_id,
                v_audit_logs(i).action_type,
                v_audit_logs(i).old_username,
                v_audit_logs(i).new_username,
                SYSDATE
            );
    END IF;
END AFTER STATEMENT;
END user_audit_trg;
/

CREATE OR REPLACE TRIGGER del_user_tr
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE FROM library WHERE user_id = :OLD.user_id;
    DELETE FROM wallets WHERE user_id = :OLD.user_id;

    DELETE FROM purchases_item
     WHERE purchase_id IN (
           SELECT purchase_id
             FROM purchases
            WHERE user_id = :OLD.user_id
     );

    DELETE FROM purchases WHERE user_id = :OLD.user_id;
    DELETE FROM user_achievements WHERE user_id = :OLD.user_id;
    DELETE FROM sessions WHERE user_id = :OLD.user_id;
    DELETE FROM friends WHERE user_id = :OLD.user_id OR friend_id = :OLD.user_id;
    DELETE FROM messages WHERE sender_id = :OLD.user_id OR receiver_id = :OLD.user_id;
    DELETE FROM reviews WHERE user_id = :OLD.user_id;
    DELETE FROM badges WHERE user_id = :OLD.user_id;
END;
/

