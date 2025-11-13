USE act_db;


SELECT empno, lastname, job, edlevel
FROM EMPLOYEE
WHERE CAST(empno AS UNSIGNED)/3*3 = CAST(empno AS UNSIGNED)

UNION 

SELECT empno, lastname, job, edlevel
FROM EMPLOYEE
WHERE edlevel = 12
ORDER BY 1;