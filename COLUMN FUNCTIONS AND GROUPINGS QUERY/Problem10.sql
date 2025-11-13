USE act_db;

SELECT ROW_NUMBER() OVER (ORDER BY d.deptno) AS "REC No.", CONCAT(d.deptno, ' -> ', d.deptname,' ',"(",(d.mgrno),")") AS "DEPT-INFO", COUNT(e.empno) AS "NO. EMP", e.job AS "JOBS", ROUND(AVG(e.edlevel),0) AS "AVG-EDLEVEL", 
FORMAT(SUM(e.salary),1) AS "SUM SALARY",FORMAT(SUM(e.bonus),1) AS "SUM BONUS", FORMAT(SUM(e.comm),1) AS"SUM COMM",FORMAT(SUM(e.salary + COALESCE(e.bonus, 0) + COALESCE(e.comm, 0)), 1) AS "TOTALINCOME"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname,d.mgrno,e.job;
