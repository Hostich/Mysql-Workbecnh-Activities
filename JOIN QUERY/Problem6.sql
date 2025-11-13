USE act_db;

SELECT e.empno, e.firstname, e.lastname, e.job, p.projno, p.projname
FROM EMPLOYEE e
JOIN PROJECT p
	ON e.workdept = p.deptno
WHERE p.projname LIKE '%PROGRAMMING' AND e.job = 'MANAGER'
ORDER BY e.empno;