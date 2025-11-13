USE act_db;


SELECT DISTINCT e.workdept, e.lastname, p.projname, em.actno
FROM EMP_ACT em
JOIN EMPLOYEE e
	ON em.empno = e.empno
JOIN PROJECT p
	ON em.projno = p.projno
WHERE e.workdept BETWEEN 'A00' AND 'C01'
ORDER BY e.workdept, e.lastname, em.actno;