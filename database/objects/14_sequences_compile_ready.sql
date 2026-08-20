-- Compile-ready sequence layer.
-- The current tables use identity columns, but the exported APEX PL/SQL can still
-- reference these explicit sequences. This block preserves them without failing
-- when patching an existing schema where they already exist.

DECLARE
    PROCEDURE create_sequence_if_missing (
        p_sequence_name IN VARCHAR2,
        p_start_with    IN NUMBER
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_exists
          FROM user_sequences
         WHERE sequence_name = UPPER(p_sequence_name);

        IF v_exists = 0 THEN
            EXECUTE IMMEDIATE
                'CREATE SEQUENCE "' || UPPER(p_sequence_name) || '"' ||
                ' MINVALUE 1' ||
                ' MAXVALUE 9999999999999999999999999999' ||
                ' INCREMENT BY 1' ||
                ' START WITH ' || TO_CHAR(p_start_with) ||
                ' CACHE 20' ||
                ' NOORDER' ||
                ' NOCYCLE' ||
                ' NOKEEP' ||
                ' NOSCALE' ||
                ' GLOBAL';
        END IF;
    END create_sequence_if_missing;
BEGIN
    create_sequence_if_missing('DEVELOPER_ID_SEQ', 52);
    create_sequence_if_missing('GAME_ID_SEQ', 521);
    create_sequence_if_missing('MESSAGE_ID_SEQ', 2789);
    create_sequence_if_missing('PURCHASE_ID_SEQ', 705);
    create_sequence_if_missing('PURCHASE_ITEM_ID_SEQ', 1404);
    create_sequence_if_missing('REVIEW_ID_SEQ', 1433);
    create_sequence_if_missing('SESSION_ID_SEQ', 1413);
    create_sequence_if_missing('USER_ID_SEQ', 1061);
    create_sequence_if_missing('WALLET_ID_SEQ', 2945);
END;
/
