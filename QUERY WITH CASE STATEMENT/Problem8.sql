USE act_db;

SELECT empno, lastname, comm,
	CASE 	
		WHEN comm <= 2000.00 THEN comm * 1.03
		WHEN comm > 2000.00 AND comm <= 3000.00 THEN comm * 1.25
        WHEN comm > 3000.00 AND  comm <= 4000.00 THEN comm * 1.02
        ELSE
			comm * 1.01
		END AS "ADJ COMM"
FROM EMPLOYEE
ORDER BY comm DESC;