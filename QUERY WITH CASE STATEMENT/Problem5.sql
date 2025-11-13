USE act_db;


SELECT empno, lastname, job,
	CASE 
		WHEN job = 'PRES' THEN "CONFIDENTIAL"
        WHEN job = 'MANAGER' THEN 
			CASE 	
				WHEN salary > 9000.00 THEN salary * 1.05
				WHEN salary > 8000.00 THEN salary * 1.35
				ELSE  salary * 1.25
			END
		WHEN job = 'ANALYSIST' THEN
			CASE 
				WHEN salary > 7000.00 THEN salary * 1.04
				WHEN salary > 6000.00 THEN salary * 1.02
				ELSE salary * 1.05
			END 
		ELSE salary * 1.01
	END AS "ADJ SALARY"
FROM EMPLOYEE
ORDER BY empno;
             
             
                