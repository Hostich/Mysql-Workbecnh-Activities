USE act_db;


SELECT CONCAT(d.deptno,' - ', d.deptname,' - ',d.mgrno) AS "DEPT-NAME-MGRNO", ROUND(AVG(e.salary),2) AS "SUM-SALARY-DEPT"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname,d.mgrno;