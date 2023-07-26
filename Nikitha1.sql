SELECT COUNT(*) AS TotalUsers
FROM FACEBOOK 
WHERE DOB_YEAR = 1999;

SELECT AGE, COUNT(*) AS UserCount
FROM FACEBOOK
GROUP BY AGE
ORDER BY AGE;


SELECT COUNT(*) AS TotalUsers
FROM FACEBOOK
WHERE AGE > 15;


SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM FACEBOOK) AS FemalePercentage
FROM FACEBOOK
WHERE GENDER = 'female'
GROUP BY GENDER;

SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook WHERE AGE>17 ) AS FemalePercentage
FROM facebook
WHERE AGE > 17 AND GENDER = 'female'
GROUP BY GENDER;