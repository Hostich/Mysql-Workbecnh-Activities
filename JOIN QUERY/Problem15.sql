USE act_db; 



SELECT e.workdept, m.lastname, e.lastname, m.hiredate, e.hiredate
FROM EMPLOYEE e
JOIN DEPARTMENT d
	ON e.workdept = d.deptno
JOIN EMPLOYEE m
	ON d.mgrno = m.empno
WHERE e.workdept IN ('A00','C01','D01','E01')
AND e.hiredate < m.hiredate
ORDER BY e.lastname;  