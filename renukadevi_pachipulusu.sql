<<<<<<< HEAD
-- Query to find the total number of users who were born in the year 1999.
select count(*) as Totalusers from facebook
where dob_year=1999;

-- Query to count the number of social media users for each age group.`
select age, count(*) as usercount from FACEBOOK
group by age 
order by age asc;

--Query to find total users in social media above age 15.
select count(*) as Totalusers from FACEBOOK 
where age>15;

-- Query to find the percentage of female users who are using social media.
select count(*)*100/ (select count(*) from facebook) AS female_percentage 
from FACEBOOK 
where gender='female' 
group by gender;

--Query to find the percentage of female users among users above the age of 17.
select count(*)*100/ (select count(*) from facebook where age>17) AS female_percentage 
from FACEBOOK 
where gender='female' and age>17 
group by gender;
=======

SELECT COUNT(*) AS TotalUsers
FROM FACEBOOK
WHERE DOB_YEAR = 1999;


SELECT AGE, COUNT(*) AS UserCount
FROM FACEBOOK
GROUP BY AGE 
order by age asc;


SELECT COUNT(*) AS TotalUsers
FROM facebook
WHERE AGE > 15;


SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook) AS FemalePercentage
FROM facebook
WHERE GENDER = 'female'
GROUP BY GENDER;



SELECT (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM facebook where age>17) AS FemalePercentage
FROM facebook
WHERE AGE > 17 AND GENDER = 'female'
GROUP BY GENDER;

>>>>>>> e169edf6113336c422d85f9a1e4d7d5d83ea68d6
