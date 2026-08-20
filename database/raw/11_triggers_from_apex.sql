-- Raw trigger DDL copied from Oracle APEX Object Browser.

create or replace TRIGGER DEL_USER_TR
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE FROM library WHERE user_id = :OLD.user_id;
    DELETE FROM wallets WHERE user_id = :OLD.user_id;

    DELETE FROM purchases_item
    WHERE purchase_id IN (SELECT purchase_id FROM purchases WHERE user_id = :OLD.user_id);

    DELETE FROM purchases WHERE user_id = :OLD.user_id;

    DELETE FROM user_achievements WHERE user_id = :OLD.user_id;
    DELETE FROM sessions WHERE user_id = :OLD.user_id;

    DELETE FROM friends WHERE user_id = :OLD.user_id OR friend_id = :OLD.user_id;
    DELETE FROM messages WHERE sender_id = :OLD.user_id OR receiver_id = :OLD.user_id;
    DELETE FROM reviews WHERE user_id = :OLD.user_id;
    DELETE FROM badges WHERE user_id = :OLD.user_id;
END;
/

create or replace trigger "NORMALIZATION_EMAIL_TRG"
before
insert or update or delete on "USERS"
for each row
begin
    :NEW.email := LOWER(:NEW.email);
end;
/

create or replace TRIGGER trg_add_to_library
AFTER UPDATE OF status ON purchases
FOR EACH ROW
WHEN (NEW.status = 'completed')
BEGIN
    INSERT INTO library (game_id, user_id, purchase_id, added_date)
    SELECT game_id, :NEW.user_id, :NEW.purchase_id, CURRENT_TIMESTAMP
    FROM purchases_item
    WHERE purchase_id = :NEW.purchase_id;
END;
/

create or replace TRIGGER trg_check_achievement
BEFORE INSERT ON user_achievements
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT count(*) INTO v_count
    FROM user_achievements
    WHERE user_id = :NEW.user_id AND achievement_id = :NEW.achievement_id;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Это достижение уже разблокировано.');
    END IF;
END;
/

create or replace TRIGGER trg_ddl_log
AFTER DDL ON SCHEMA
DECLARE
    v_user varchar2(100);
BEGIN
    v_user := COALESCE(V('APP_USER'), SYS_CONTEXT('USERENV', 'SESSION_USER'));

    INSERT INTO ddl_log (
        username,
        object_name,
        object_type,
        action_type,
        action_date
    )
    VALUES (
        v_user,
        ORA_DICT_OBJ_NAME,
        ORA_DICT_OBJ_TYPE,
        ORA_SYSEVENT,
        SYSTIMESTAMP
    );
END;
/

create or replace TRIGGER TRG_FRIENDSHIP_CLEANUP
AFTER DELETE ON friends
FOR EACH ROW
BEGIN
    DELETE FROM messages
    WHERE (sender_id = :OLD.user_id AND receiver_id = :OLD.friend_id)
       OR (sender_id = :OLD.friend_id AND receiver_id = :OLD.user_id);

    DBMS_OUTPUT.PUT_LINE('Chat history cleared between users ' || :OLD.user_id || ' and ' || :OLD.friend_id);
END;
/

create or replace TRIGGER TRG_PREVENT_NEGATIVE_PRICE
BEFORE INSERT OR UPDATE OF price ON games
FOR EACH ROW
BEGIN
    IF :NEW.price < 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Operation cancelled: Game price cannot be negative.');
    END IF;
END;
/

create or replace TRIGGER TRG_UPDATE_WALLET_TIME
BEFORE UPDATE OF balance ON wallets
FOR EACH ROW
BEGIN
    :NEW.updated_at := CURRENT_TIMESTAMP;
END;
/

create or replace trigger "USER_AUDIT_TRG"
FOR insert or update or delete on "USERS"
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
            INSERT INTO user_audit_log (user_id, action_type, old_username, new_username, action_date)
            VALUES (v_audit_logs(i).user_id, v_audit_logs(i).action_type, v_audit_logs(i).old_username, v_audit_logs(i).new_username, SYSDATE);
    END IF;
END AFTER STATEMENT;

END "USER_AUDIT_TRG";
/

