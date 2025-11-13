USE act_db;

SELECT DISTINCT p.projno, p.projname, e.empno, e.lastname, em.actno
FROM EMP_ACT em
JOIN EMPLOYEE e
	ON em.empno = e.empno
JOIN PROJECT p
	ON em.projno = p.projno
WHERE em.projno IN('AD3113','IF2000','MA2112','OP2021')
ORDER BY em.actno;
