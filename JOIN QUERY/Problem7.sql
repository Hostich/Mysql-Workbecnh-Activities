USE act_db;


SELECT DISTINCT p.projno, p.projname, e.actno
FROM PROJECT p
JOIN EMP_ACT e
	ON p.projno = e.projno
WHERE p.projno LIKE 'AD%' OR p.projno LIKE '%11'
ORDER BY e.actno;