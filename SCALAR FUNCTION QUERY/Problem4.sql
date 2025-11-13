USE act_db;

SELECT empno, lastname, workdept, edlevel, job, NULLIF(job,'MANAGER') AS Position
FROM EMPLOYEE
WHERE workdept IN('C01','D21','E21') AND empno BETWEEN '000030' AND '000240'
ORDER BY empno;