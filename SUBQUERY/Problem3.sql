USE act_db;


SELECT workdept, FORMAT(MIN(salary),2) AS "Dept Minimum Salary > Avg. Salary"
FROM EMPLOYEE
WHERE workdept IN('B01','C01','D01','E01')
GROUP BY workdept
HAVING MIN(salary) > (SELECT AVG(salary) FROM EMPLOYEE) 

UNION

SELECT ' Company Average Salary -->>' AS workdept, FORMAT(AVG(salary),2) AS "Dept Minimum Salary > Avg. Salary"
FROM EMPLOYEE;