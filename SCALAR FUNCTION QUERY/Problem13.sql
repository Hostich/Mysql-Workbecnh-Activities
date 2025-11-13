USE act_db;


SELECT CONCAT(firstname,' ',midinit,'. ',lastname) AS "EMPLOYEES NAME", 
	CASE 
		WHEN edlevel = 18 THEN 'EIGHTEEN'
        ELSE 
			'TWENTY'
	END AS "EDUCATION LEVEL",
    
    FORMAT(ROUND(salary + 1800.00,2),2) AS "NEW SALARY" ,
    FORMAT(ROUND(coalesce(bonus/2,0),2),2) AS "NEW BONUS"
FROM EMPLOYEE
WHERE edlevel IN(18,20)
ORDER BY edlevel DESC; 
    