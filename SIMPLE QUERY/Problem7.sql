USE act_db;

SELECT firstname, lastname, salary, bonus, comm 
FROM EMPLOYEE
WHERE salary > 22000.00 AND bonus = 400 OR bonus = 500 AND comm < 1900.00
ORDER BY lastname;