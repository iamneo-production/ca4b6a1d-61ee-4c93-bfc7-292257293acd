-- Query To Find The total Number Of Users Who Were born In The Year 1999.
SELECT COUNT(*) AS TotalUsers
From Facebook
WHERE DOB_YEAR = 1999;


-- Query To Count The Number Of Social Media Users For each Age Group.
SELECT AGE, COUNT(*) AS UserCount
FROM FACEBOOK
group by AGE
order by AGE;


--Query To Find Total Users In Social Media above Age 15.
SELECT COUNT(*) AS TotalUsers
FROM FACEBOOK
Where AGE > 15;


-- Query To Find The Percentage Of Female Users Who are Using Social Media.
SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook ) AS FemalePercentage
From Facebook
WHERE GENDER = 'female'
group by gender;


--Query To Find The Percentage Of Female Users among Users Above The Age Of 17.
SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook where age>17) AS FemalePercentage
FROM FACEBOOK
WHERE AGE > 17 AND GENDER = 'female'
Group by GENDER;    
