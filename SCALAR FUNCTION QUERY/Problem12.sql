USE act_db;


SELECT lastname, salary, FORMAT(ROUND(salary * 1.05), 2) AS "INC-Y-SALARY", FORMAT(ROUND((salary * 1.05)/12, 2),2) AS "INC-M-SALARY"
FROM EMPLOYEE
WHERE salary <= 60000.00;