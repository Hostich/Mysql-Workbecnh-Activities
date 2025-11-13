USE act_db;


SELECT empno, lastname,
	CASE 
		WHEN sex = 'M' THEN "MALE"
        WHEN sex = 'F' THEN "FEMALE"
        ELSE
			"ANO KA!"
	END AS "Ano ka!"
FROM EMPLOYEE
WHERE workdept BETWEEN 'B01' AND 'D01'
ORDER BY sex DESC, empno; 