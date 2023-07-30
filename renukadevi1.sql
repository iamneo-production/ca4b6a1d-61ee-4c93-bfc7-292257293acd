--find out the total number of users who born in the year 1999
SELECT COUNT(*) AS TotalUsers
FROM FACEBOOK
WHERE DOB_YEAR = 1999;

--counting the number of facebook users for each and every age group
SELECT AGE, COUNT(*) As UserCount
FROM FACEBOOK
GROUP BY AGE 
order by age asc;

--find out the total users in facebook above age 15
SELECT COUNT(*) AS TotalUsers
FROM facebook
WHERE AGE > 15;

--find out the percentage of female users who are using facebook where gender represented as 'female'
SELECT (COUNT() * 100.0) / (SELECT COUNT() FROM facebook) AS FemalePercentage
FROM facebook
WHERE GENDER = 'female'
GROUP BY GENDER;

--find out the percentage of female users among users above age of 17
SELECT (COUNT() * 100.0) / (SELECT COUNT() FROM facebook where age>17) AS FemalePercentage
FROM facebook
WHERE AGE > 17 AND GENDER = 'female' group by GENDER;
