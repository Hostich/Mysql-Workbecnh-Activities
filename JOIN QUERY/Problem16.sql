USE act_db;

SELECT e.workdept, e.lastname AS "EMPLOYEE",e.birthdate AS "EMP-BDATE", m.lastname AS "MANAGER", m.birthdate AS "MGR-BDATE"
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
JOIN EMPLOYEE m
	ON d.mgrno = m.empno
WHERE e.birthdate > m.birthdate
ORDER BY e.lastname;  