Spool drop_schema_tables.SQL
 
SELECT 'Drop ' || object_type || ' ' || object_name || ' CASCADE CONSTRAINTS;' FROM user_objects
WHERE object_type IN ('TABLE','VIEW')
ORDER BY object_type DESC, object_name;
spool off