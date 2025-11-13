USE act_db;


SELECT deptno, deptname, IFNULL(mgrno,'UNKOWN MANAGER') AS "MGRNO"
FROM DEPARTMENT
WHERE mgrno IS NULL
ORDER BY deptno;
