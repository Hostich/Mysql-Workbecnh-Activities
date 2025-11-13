USE act_db;

SELECT e.lastname, e.firstname, d.deptname
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
ORDER BY d.deptname, e.lastname, e.firstname;