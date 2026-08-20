-- Existing APEX schema patch entrypoint.
-- Run from database/install when Object Browser tables already exist.

SET DEFINE OFF;

@@../objects/02_schema_patches_compile_ready.sql
@@../objects/14_sequences_compile_ready.sql
@@../objects/12_triggers_compile_ready.sql
@@../objects/08_functions_compile_ready.sql
@@../objects/04_packages_compile_ready.sql
@@../objects/10_procedures_compile_ready.sql
@@99_check_invalid_objects.sql
