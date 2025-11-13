USE act_db;

SELECT d.deptname, CONCAT(LEFT(e.firstname,1),'. ', COALESCE(e.midinit,' '),' ', e.lastname) AS "EMP-NAME", FORMAT((e.salary + COALESCE(e.comm,0) + COALESCE(e.bonus,0)),2) AS "INCOME"
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
WHERE (e.salary + COALESCE(e.comm,0) + COALESCE(e.bonus,0)) > (e.salary * 1.10) AND d.deptno = 'D11'  
ORDER BY "INCOME" DESC;