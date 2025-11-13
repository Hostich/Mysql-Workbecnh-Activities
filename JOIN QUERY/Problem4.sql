USE act_db;

SELECT e.empno, e.firstname, e.lastname, e.job, p.projno, p.projname
FROM EMPLOYEE e
JOIN PROJECT p
	ON e.empno = p.respemp
WHERE p.projname LIKE '%PROGRAMMING'
ORDER BY e.empno;