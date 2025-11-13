USE act_db;

SELECT empno, lastname, hiredate, DATE_FORMAT(hiredate,'%m/%d/%Y') AS "DATE
HIRED", DATE_FORMAT(hiredate, '%M %D, %Y') AS "HIRED DATE"
FROM EMPLOYEE
WHERE empno BETWEEN '000010' AND '000060'
ORDER BY empno;