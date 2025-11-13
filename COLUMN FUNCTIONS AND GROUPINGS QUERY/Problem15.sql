USE act_db;

SELECT e.workdept , d.deptname, CASE 
	WHEN e.sex = 'M' THEN "MALE"
    ELSE 
		"FEMALE"
END AS "Gender",
FORMAT(AVG(e.salary),1) AS "AVG-SALARY",
FORMAT(AVG(e.bonus),1) AS "AVG-BONUS",
FORMAT(AVG(e.comm),1) AS "AVG-COMM",
COUNT(e.empno) AS "NO. of EMP"
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
WHERE e.workdept LIKE "_1_"
GROUP BY e.workdept, d.deptname,e.sex
HAVING COUNT(e.empno) >= 3
ORDER BY e.sex ASC;
