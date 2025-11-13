USE act_db;

SELECT lastname, salary, comm 
FROM EMPLOYEE
WHERE salary > 20000.00 AND hiredate > '1979-01-01';