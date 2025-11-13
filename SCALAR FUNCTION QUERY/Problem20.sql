USE act_db;

SELECT projno, projname, ROUND(DATEDIFF(prendate, prsdate)/7,1) AS 'DURATION IN WEEKS'
FROM PROJECT 
WHERE projno LIKE 'MA%' AND 'OP%'
ORDER BY projno;