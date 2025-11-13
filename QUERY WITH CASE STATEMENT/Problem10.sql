USE act_db;

SELECT workdept, empno, lastname, salary,
	CASE 
		WHEN salary > 40000.00 THEN "Executive Mgt."
        WHEN salary > 30000.00 THEN "Middle Mgt."
        WHEN salary > 20000.00 THEN "First-Level Mgt."
        ELSE 
			"Intermedaite Level"
	END AS "job level"
FROM EMPLOYEE
ORDER BY workdept, empno;