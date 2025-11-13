USE act_db;

SELECT mgrno, deptno 
FROM DEPARTMENT 
WHERE mgrno IS NOT NULL
ORDER BY mgrno;