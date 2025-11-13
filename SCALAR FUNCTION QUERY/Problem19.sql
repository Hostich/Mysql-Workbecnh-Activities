USE act_db;


SELECT DATE_FORMAT(prsdate, '%Y') AS "YEAR", DATE_FORMAT(prsdate,'%M') AS "MONTH", projno
FROM PROJECT
WHERE prendate = '2002-01-12'
ORDER BY projno;