USE act_db;

SELECT deptno, deptname, COALESCE(mgrno,"No Manager Yet...") AS Manager
FROM DEPARTMENT 
WHERE deptno IN('D01','H22')
ORDER BY deptno;