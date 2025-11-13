USE act_db;


SELECT d.deptno, d.deptname, COUNT(e.empno) AS "NO. EMP", FORMAT(AVG(e.salary + COALESCE(e.bonus,'') + COALESCE(comm,'')),1) AS "DEPT-AVG-INCOME"
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
GROUP BY d.deptno,d.deptname
HAVING COUNT(e.empno) >= 4;


