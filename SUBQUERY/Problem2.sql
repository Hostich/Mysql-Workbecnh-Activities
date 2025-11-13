USE act_db;


SELECT empno, workdept, lastname, job, comm
FROM EMPLOYEE
WHERE empno IN (SELECT empno FROM EMPLOYEE WHERE empno IN('000260','000290','000310','200310'));