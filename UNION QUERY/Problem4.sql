USE act_db;

SELECT workdept AS "WORKDEPT", job AS "JOB", lastname AS "LASTNAME", firstname AS "FIRSTNAME", 'BEFORE A RAISE' AS "WHEN", FORMAT(salary,2) AS "SALARY"
FROM EMPLOYEE
WHERE workdept = 'D21' AND job = 'CLERK'

UNION 

SELECT workdept, job, lastname, firstname, 'AFTER A RAISE' AS "WHEN", FORMAT(salary * 1.10,2) AS "SALARY"
FROM EMPLOYEE
WHERE workdept = 'D21' AND job = 'CLERK'
ORDER BY lastname, firstname, 'WHEN';
