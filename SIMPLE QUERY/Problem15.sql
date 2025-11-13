USE act_db;

SELECT lastname, firstname, midinit, salary 
FROM EMPLOYEE
WHERE job NOT IN ('MANAGER', 'PRES')
ORDER BY salary desc
lIMIT 5;