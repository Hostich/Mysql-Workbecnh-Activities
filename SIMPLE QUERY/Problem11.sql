USE act_db;

SELECT empno, lastname, salary, workdept
FROM EMPLOYEE
WHERE workdept BETWEEN 'A00' AND 'C01'
ORDER BY lastname ASC, empno;