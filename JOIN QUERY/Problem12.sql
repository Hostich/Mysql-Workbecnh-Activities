USE act_db;


SELECT e.empno, e.firstname, e.lastname, e.hiredate, e.job, p.projno, p.projname, p.prsdate
FROM EMPLOYEE e
JOIN PROJECT p
	ON e.empno = p.respemp
WHERE job != 'MANAGER' AND job != 'PRES'
ORDER BY  prsdate, empno;