USE act_db;

SELECT p.projno, CONCAT(e.firstname,' ',e.midinit,'. ',e.lastname) AS "Employees Name", d.deptname, p.prendate, 
DATE_ADD(prsdate, INTERVAL ROUND(DATEDIFF(prendate,prsdate) * 1.10) DAY) AS "MODIFIED END DATE"
FROM PROJECT p
JOIN EMPLOYEE e
	ON p.respemp = e.empno
JOIN DEPARTMENT d
	ON p.deptno = d.deptno
WHERE projno NOT LIKE 'MA%'
ORDER BY projno;