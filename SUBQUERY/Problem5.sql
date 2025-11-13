USE act_db;

SELECT workdept, empno, lastname, salary
FROM EMPLOYEE 
WHERE empno IN('000010','000020','000030','000050','000070','000110')
 AND salary >= (SELECT FORMAT(AVG(salary) + 5000.00,2) FROM EMPLOYEE)
 
 
UNION 

SELECT '' AS workdept, 'Average Salary Of All Employees + 5000.000' AS empno, '........>>>' AS lastname, FORMAT(AVG(salary) + 5000.00,2) AS salary
FROM EMPLOYEE;