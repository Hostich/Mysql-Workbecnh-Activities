USE act_db; 

SELECT d.deptno, d.deptname,e.empno,e.firstname,e.lastname,e.edlevel,e.job
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
ORDER BY d.deptno,e.empno;