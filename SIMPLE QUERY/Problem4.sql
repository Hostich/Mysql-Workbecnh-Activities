USE act_db;

SELECT DISTINCT empno, projno
FROM EMP_ACT
WHERE empno <= 100
ORDER BY empno; 