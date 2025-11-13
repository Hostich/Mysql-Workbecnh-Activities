USE act_db;

SELECT d.deptno, d.deptname, e.lastname, e.salary, 
	CASE
        WHEN d.deptno = 'D11'
             AND e.salary >= 50000.00 * 0.8
             AND e.salary <= 50000.00 * 1.2
        THEN e.salary - 1000.00
        ELSE e.salary
    END AS "DECR-SALARY"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
WHERE d.deptno = 'D11'
ORDER BY e.salary;