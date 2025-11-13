USE act_db;


SELECT empno, lastname, workdept, bonus,
	CASE 
		WHEN workdept = 'B01' THEN bonus + 500.00
        WHEN workdept = 'C01' THEN bonus + 450.00
        WHEN workdept = 'D11' THEN bonus + 400.00
        ELSE
			bonus + 350.00
		END AS "INC-BONUS"
FROM EMPLOYEE
ORDER BY workdept, bonus DESC;