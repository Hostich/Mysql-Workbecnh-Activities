USE act_db;


SELECT lastname, salary, bonus
FROM EMPLOYEE
WHERE sex = 'M' AND birthdate < '1975-01-01';