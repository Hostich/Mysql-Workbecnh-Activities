USE act_db;


SELECT empno, lastname, job, edlevel, CONCAT(TIMESTAMPDIFF(YEAR,hiredate, CURDATE()),' Years')AS "SERVING", salary
FROM EMPLOYEE
WHERE (job,edlevel) = (SELECT job, edlevel FROM EMPLOYEE WHERE lastname = 'PULASKI')
AND lastname != 'PULASKI'

UNION 

SELECT 'ANALYSIS' AS empno, '','','','',''
FROM EMPLOYEE

UNION

SELECT 'REFERENCE' AS empno, lastname, job, edlevel,CONCAT(TIMESTAMPDIFF(YEAR,hiredate, CURDATE()),' Years') AS "SERVING", salary
FROM EMPLOYEE
WHERE lastname = 'PULASKI';