--Find out the total  number of users who born in the year 1999
SELECT  Count(*) AS TotalUsers
From  FACEBOOK
WHERE  DOB_YEAR = 1999;

--Counting the number of Facebook users for Each and every age group
SELECT Age,Count(*) As UserCount FROM FACEBOOK
GROUP BY Age 
order by age asc;

--find out the tOTAL users in facebook above age 15
SELECT COUNT(*) AS TOTALUSERS FROM FACEBOOK
WHERE AGE > 15;

--find out the percentage of female users who are using Facebook where gender represented as 'female'
SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM FACEBOOK) AS FemalePercentage FROM facebook WHERE GENDER = 'female'
GROUP BY Gender;

--find out the Percentage of female users among users Above age of 17
Select (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook where age>17) AS FemalePercentage FROM fACEBOOK WHERE AGE > 17 AND GENDER = 'female' group by Gender;