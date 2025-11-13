USE act_db;

SELECT empno, CONCAT(firstname," ",midinit,". ",lastname) AS "Full Name", job
FROM EMPLOYEE
WHERE job IN('PRES','MANAGER')
ORDER BY job DESC;