SELECT COUNT(*) AS TotalUsers
FROM facebook
WHERE DOB_YEAR = 1999;

 
SELECT AGE, COUNT(*) AS UserCount
FROM facebook
GROUP BY AGE;

 
SELECT COUNT(*) AS TotalUsers
FROM facebook
WHERE AGE > 15;

 
SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook ) AS FemalePercentage
FROM facebook
WHERE GENDER = 'female'
group by gender;

 
SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook WHERE AGE > 17) AS FemalePercentage
FROM facebook
WHERE AGE > 17 AND GENDER = 'female'
GROUP BY GENDER;

