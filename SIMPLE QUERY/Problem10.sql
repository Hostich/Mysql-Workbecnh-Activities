USE act_db;

SELECT empno, lastname, salary, bonus 
FROM EMPLOYEE
WHERE bonus >= 800.00 OR bonus <= 1000.00
ORDER BY bonus ASC, empno; 