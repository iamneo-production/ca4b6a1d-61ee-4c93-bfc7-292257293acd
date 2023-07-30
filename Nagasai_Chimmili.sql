-- Query to find the total number of users who were born in the year 1999.
select count(*) from facebook
where dob_year=1999;

-- Query to count the number of social media users for each age group.`
select age, count(*) from FACEBOOK
group by age 
order by age asc;

--Query to find total users in social media above age 15.
select count(*)  from FACEBOOK 
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