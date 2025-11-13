USE act_db;


SELECT empno, lastname, birthdate, salary
FROM EMPLOYEE
WHERE salary > 30000.00
ORDER BY salary DESC;