USE act_db;


SELECT e.empno, CONCAT(e.firstname,' ', midinit,' ',e.lastname) AS "Name", d.deptname, FLOOR(DATEDIFF(e.hiredate, e.birthdate)/ 365) AS "Age"
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
WHERE FLOOR(DATEDIFF(e.hiredate, e.birthdate)/ 365) < 25 
ORDER BY "Age", e.empno; 