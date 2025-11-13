USE act_db;


SELECT d.deptno, d.deptname, COUNT(e.empno) AS "NUMBER OF EMPLOYEE", FORMAT(AVG(e.bonus),2) AS "AVERAGE BONUS/DEPT", 
	FORMAT(AVG(e.comm),2) AS "AVERAGE COMMISION/DEPT", 
	FORMAT(AVG(e.salary),2) AS "AVERAGE SALARY/DEPT"  
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname
ORDER BY d.deptno;