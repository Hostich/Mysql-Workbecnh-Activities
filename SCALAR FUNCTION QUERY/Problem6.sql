USE act_db;

SELECT empno, lastname, job, hiredate, DATE_FORMAT(hiredate, '%Y') AS "YEAR 
HIRED"
FROM EMPLOYEE 
WHERE empno BETWEEN '000030' AND '000180'
ORDER BY empno;