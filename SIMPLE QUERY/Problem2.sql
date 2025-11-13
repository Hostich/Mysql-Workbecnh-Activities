USE act_db;

SELECT lastname, firstname, workdept
FROM EMPLOYEE
ORDER BY workdept DESC, lastname DESC;