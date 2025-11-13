USE act_db;


SELECT empno, lastname, workdept, edlevel,sex AS gender,
	CASE 
		WHEN edlevel IN(12,13,14,15) THEN "Low Priority"
        WHEN edlevel IN(16,17) THEN "Middle Priority"
        ELSE 
			"High Priority"
	END AS "DB Access Priority Level"
FROM EMPLOYEE
ORDER BY empno;