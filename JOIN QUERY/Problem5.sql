USE act_db;

SELECT d.deptname, e.lastname, e.firstname
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.empno = d.mgrno
WHERE e.job = 'MANAGER'
ORDER BY d.deptname;