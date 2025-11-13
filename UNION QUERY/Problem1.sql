USE act_db;

SELECT empno, CONCAT(firstname,' ',lastname) AS "EMP NAME", job, edlevel
FROM EMPLOYEE
WHERE job = 'ANALYSIST'

UNION

SELECT empno,CONCAT(firstname, lastname) AS "EMP NAME", job,edlevel
FROM EMPLOYEE
WHERE edlevel = 18
ORDER BY empno;