USE act_db;

SELECT em.empno, p.projno, p.projname, em.actno, em.emsdate
FROM EMP_ACT em
JOIN PROJECT p 
	ON em.projno = p.projno
WHERE em.emsdate = '2011-10-01'
ORDER BY em.empno, em.actno;