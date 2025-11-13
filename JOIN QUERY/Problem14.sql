USE act_db;


SELECT em.actno, e.empno, em.emsdate, p.projno, e.lastname
FROM EMP_ACT em
JOIN EMPLOYEE e
	ON em.empno = e.empno
JOIN PROJECT p
	ON em.projno = p.projno
WHERE em.emsdate = '2002-10-15'
ORDER BY em.actno, em.emsdate;