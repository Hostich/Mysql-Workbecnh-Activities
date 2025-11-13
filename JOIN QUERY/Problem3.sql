USE act_db;

SELECT e.lastname, e.firstname, e.job, d.deptname
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
WHERE d.deptno BETWEEN 'A02' AND 'D22' AND e.job NOT LIKE 'MANAGER'
ORDER BY d.deptname, e.job,e.firstname, e.lastname;