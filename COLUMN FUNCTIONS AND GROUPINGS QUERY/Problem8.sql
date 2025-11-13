USE act_db;

SELECT d.deptname, CONCAT(LEFT(e.firstname,1),' ', COALESCE(e.midinit,''),' ',e.lastname,' - ',job,' - ',
CASE edlevel
	WHEN 12 THEN "XII"
    WHEN 13 THEN "XII"
    WHEN 14	THEN "XIV"
    WHEN 15 THEN "XV"
    WHEN 16 THEN "XVI"
    WHEN 17 THEN "XVII"
    WHEN 18 THEN "XVIII"
    WHEN 19 THEN "XIX"
    ELSE 
		"XX"
END) AS "EMP-INFO", 
p.projno, p.projname, CONCAT(TIMESTAMPDIFF(MONTH, prsdate, prendate),' ',"Mons.") AS "PROJ-DURATION"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
JOIN PROJECT p
	ON e.empno = p.respemp
WHERE p.projno IN('AD3112','AD3111','OP2013','AD3113','OP2011');