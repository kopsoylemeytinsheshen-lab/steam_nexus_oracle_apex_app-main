-- Fresh install entrypoint.
-- Run from database/install in SQLcl or SQL Developer.

SET DEFINE OFF;

@@../objects/01_schema_compile_ready.sql
@@../objects/14_sequences_compile_ready.sql
@@../objects/12_triggers_compile_ready.sql
@@../objects/08_functions_compile_ready.sql
@@../objects/04_packages_compile_ready.sql
@@../objects/10_procedures_compile_ready.sql
@@99_check_invalid_objects.sql
