USE act_db;


SELECT 
    e.empno, 
    e.lastname, 
    e.job, 
    e.workdept, 
    p.projno, 
    p.projname
FROM EMPLOYEE e
JOIN PROJECT p
    ON e.empno = p.respemp
WHERE e.workdept IN ('C01', 'D11', 'D21', 'E21')
ORDER BY e.empno, p.projno;