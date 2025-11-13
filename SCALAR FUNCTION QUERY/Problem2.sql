USE act_db;

SELECT empno, lastname, bonus, comm, comm AS "INCENTIVES"
FROM EMPLOYEE
WHERE empno IN('000130','200140')
ORDER BY empno;