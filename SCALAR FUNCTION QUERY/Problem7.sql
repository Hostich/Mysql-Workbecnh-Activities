USE act_db;

SELECT empno, lastname, job, hiredate, DATE_FORMAT(hiredate, '%c') AS "MONTH 
HIRED"
FROM EMPLOYEE 
WHERE empno BETWEEN '000020' AND '000160'
ORDER BY empno;