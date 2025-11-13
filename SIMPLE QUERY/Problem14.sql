USE act_db;

SELECT deptno
FROM DEPARTMENT
WHERE deptno LIKE '%_1_%'
ORDER BY deptno;