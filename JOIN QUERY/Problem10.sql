USE act_db;

SELECT e.empno, e.lastname, e.job, d.deptno, d.deptname, d.location
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
WHERE  job = 'MANAGER'
ORDER BY d.deptno;
    