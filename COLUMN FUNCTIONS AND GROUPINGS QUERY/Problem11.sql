USE act_db;

SELECT d.deptno, CONCAT(d.deptname,' - ',COUNT(e.empno)) AS "DEPT-EMPLOYEES"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname
HAVING COUNT(e.empno);