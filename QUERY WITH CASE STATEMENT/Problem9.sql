USE act_db;


SELECT empno, lastname, workdept, job, comm,
	CASE 
		WHEN job = "CLERK" THEN comm + 100.00
        WHEN job = "OPERATOR" THEN comm + 75.00
        WHEN job = "SALESREP" THEN comm + 60.00
        ELSE 
			comm + 50.00
	END AS "INC-COMM"
FROM EMPLOYEE
ORDER BY comm DESC;