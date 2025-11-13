USE act_db;

SELECT e.workdept, e.empno, e.lastname, p.projno, p.prendate,
	CASE 
		WHEN e.workdept = 'D11' THEN 
        CASE
			WHEN p.prstaff > 3.00 THEN "2 Weeks"
			WHEN p.prstaff > 2.00 THEN "2.5 Weeks"
			ELSE 
				"3 Weeks"
		END
		WHEN e.workdept = 'D21' THEN 
		CASE
			WHEN p.prstaff > 2.00 THEN "1 Weeks"
            WHEN p.prstaff > 1.00 THEN "2 Weeks"
            ELSE
				"2.5 Weeks"
		END
        WHEN e.workdept = 'E21' THEN 
        CASE
			WHEN p.prstaff > 1.00 THEN "2 Weeks"
            ELSE 
				"2.5 Weeks"
		END
	END AS "PRJ-PRENDATE-EXT"
FROM EMPLOYEE e
JOIN PROJECT p
	ON e.empno = p.respemp
WHERE e.workdept IN('D11','D21','E21')
ORDER BY e.workdept, e.empno;