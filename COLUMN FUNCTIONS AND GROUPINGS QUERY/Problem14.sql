USE act_db;

SELECT d.deptno, d.deptname, e.job, COUNT(e.empno) AS "NO. Analysist", CASE
	WHEN AVG(e.edlevel) = 12 THEN "TWLEVE"
    WHEN AVG(e.edlevel) = 13 THEN "THIRTEEN"
    WHEN AVG(e.edlevel) = 14 THEN "FOURTEEN"
    WHEN AVG(e.edlevel) = 15 THEN "FIFTEEN"
    WHEN AVG(e.edlevel) = 16 THEN "SIXTEEN"
    WHEN AVG(e.edlevel) = 17 THEN "SEVENTEEN"
    WHEN AVG(e.edlevel) = 18 THEN "EIGHTEEN"
    WHEN AVG(e.edlevel) = 19 THEN "NINETEEN"
    ELSE 
		"TWENTY"
END AS "AVG-EDLEVEL",
ROUND(AVG(e.salary + COALESCE(e.bonus,'') + COALESCE(e.comm,'')),1) AS "DEPT-AVG-INCOME"
FROM DEPARTMENT d
JOIN EMPLOYEE e
	ON d.deptno = e.workdept
GROUP BY d.deptno,d.deptname,e.job
HAVING e.job = "ANALYSIST";