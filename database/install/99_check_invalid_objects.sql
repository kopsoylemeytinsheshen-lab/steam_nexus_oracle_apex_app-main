-- Diagnostics after install or patch.

SET PAGESIZE 200
SET LINESIZE 200

PROMPT Invalid objects

SELECT object_type,
       object_name,
       status
  FROM user_objects
 WHERE status <> 'VALID'
 ORDER BY object_type, object_name;

PROMPT Compilation errors

SELECT name,
       type,
       line,
       position,
       text
  FROM user_errors
 ORDER BY name, sequence;

