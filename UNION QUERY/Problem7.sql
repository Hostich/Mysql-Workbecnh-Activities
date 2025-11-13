USE act_db;


SELECT 'PROJECT' AS "PROJECT", projno AS "PROJNO", respemp AS "RESPEMP", prsdate AS "PRSTDATE", prendate AS "PRENDATE"
FROM PROJECT 
WHERE projno = 'IF1000'

UNION


SELECT 'PROJECT' AS "PROJECT", projno AS "PROJNO", respemp AS "RESPEMP", prsdate AS "PRSTDATE", prendate AS "PRENDATE"
FROM PROJECT 
WHERE projno = 'IF2000'
ORDER BY respemp;