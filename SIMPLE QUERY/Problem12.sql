USE act_db;


SELECT majproj, projno, projname, prsdate, prendate
FROM PROJECT 
WHERE majproj IS NULL
ORDER BY projno;