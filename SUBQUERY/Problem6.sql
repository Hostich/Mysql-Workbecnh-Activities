USE act_db;

SELECT empno, CONCAT(firstname,' ',COALESCE(midinit,''),' ',e.lastname) AS "EMPLOYEES NAME", 
	CASE sex
		WHEN 'M' THEN "MALE"
        ELSE "FEMALE"
	END AS "GENDER"
FROM EMPLOYEE e
WHERE empno IN (SELECT empno FROM EMP_ACT)

UNION 

SELECT 'Note: ' AS empno, ' Employees with empno exist in EMP_ACT table' AS "EMPLOYEES NAME",''
FROM EMPLOYEE;