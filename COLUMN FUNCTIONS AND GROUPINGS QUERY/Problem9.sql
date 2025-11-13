USE act_db;


SELECT DISTINCT CONCAT(d.deptno, ' -> ', d.deptname,' ',"(",(d.mgrno),")") AS "DEPT-INFO", CASE
	WHEN e.sex = 'M' THEN "MALE"
	ELSE 
	"FEMALE"
END AS "GENDER",
	COUNT(*) AS "NO. EMP", 
	FORMAT(AVG(e.salary),1) AS "AVG-SALARY",FORMAT(AVG(e.bonus),1) AS "AVG-BONUS", FORMAT(AVG(e.comm),1) AS"AVG-COMM"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno, d.deptname, d.mgrno, e.sex
HAVING d.mgrno IS NOT NULL AND d.mgrno IN('000010','000030','000060','000070','000090','000100');
