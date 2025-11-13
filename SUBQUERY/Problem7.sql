USE act_db;


SELECT projno, projname, DATEDIFF(prendate, prsdate) AS "Shortest project Duration"
FROM PROJECT 
WHERE DATEDIFF(prendate, prsdate) = (SELECT MIN(DATEDIFF(prendate, prsdate)) FROM PROJECT);