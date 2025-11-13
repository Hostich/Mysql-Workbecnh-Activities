USE act_db;

SELECT p.projno, IFNULL(p.majproj,'MAIN PROJECT') AS "majproj", CONCAT(e.firstname,' ',e.lastname) AS "EMP-NAME", DATE_FORMAT(p.prsdate,'%W') AS "PRJ-START-DATE"
FROM PROJECT p 
JOIN EMPLOYEE e
	ON p.respemp = e.empno
WHERE p.projno LIKE 'MA%'
ORDER BY p.projno;