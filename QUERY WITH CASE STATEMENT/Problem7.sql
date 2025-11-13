USE act_db;

SELECT DISTINCT edlevel,
	CASE 
		WHEN edlevel = 12 THEN "TWELVE"
        WHEN edlevel = 13 THEN "THIRTEEN"
        WHEN edlevel = 14 THEN "FOURTEEN"
        WHEN edlevel = 15 THEN "FIFTEEN"
        WHEN edlevel = 16 THEN "SIXTEEN"
        WHEN edlevel = 17 THEN "SEVENTEEN"
        WHEN edlevel = 18 THEN "EIGHTEEN"
        WHEN edlevel = 19 THEN "NINETEEN"
        ELSE 
			"TWENTY"
	END AS "EDUCATION LEVEL"
FROM EMPLOYEE
ORDER BY edlevel DESC;