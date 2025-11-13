USE act_db;

SELECT projname, projno 
FROM PROJECT
WHERE projname LIKE '%SUPPORT'
ORDER BY projno;