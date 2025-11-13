USE act_db;

SELECT e.workdept, e.lastname, p.projname, em.actno
FROM EMPLOYEE e
JOIN PROJECT p
	ON e.empno = p.respemp
JOIN EMP_ACT em
	ON e.empno = em.empno
WHERE e.workdept = 'A00'
ORDER BY e.empno, em.actno;