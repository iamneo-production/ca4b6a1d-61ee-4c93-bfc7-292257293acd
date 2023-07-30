-- Query to Find the total number of users who were born in the year 1999.
Select count(*) as Totalusers from Facebook
where Dob_year=1999;

-- Query to Count the number of social media users for each age group.`
select Age, count(*) as Usercount from FACEBOOK 
Group By AGE 
ORDER by AGE asc;

--Query to Find total users in Social Media above age 15.
Select count(*) as TotalUsers from FACEBOOK 
where Age>15;

-- Query to Find the percentage of Female users who are using Social media.
Select count(*)*100/ (select count(*) from facebook) AS Female_Percentage 
From FACEBOOK 
Where Gender='female' 
Group By Gender;

--Query to find the percentage of female users among users above the age of 17.
select count(*)*100/ (select count(*) from facebook where age>17) AS Female_Percentage 
from Facebook 
Where Gender='female' and age>17 
Group by Gender;