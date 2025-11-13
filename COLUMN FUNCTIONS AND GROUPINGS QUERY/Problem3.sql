USE act_db;


SELECT d.deptno, d.deptname, FORMAT(AVG(e.salary),2) AS "AVERAGE SALARY/DEPT"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname
ORDER BY d.deptno;