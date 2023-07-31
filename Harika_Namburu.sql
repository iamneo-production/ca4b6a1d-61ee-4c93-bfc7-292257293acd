

-- query to find the total number of users who were born in the year 1999.
select count(*) AS total_users from facebook
 where dob_year=1999;

-- query to count the number of social media users for each age group.
 select age, count(*) as age_count from FACEBOOK
  group by age 
  order by age asc;

--query to find total users in social media above age 15.
 select count(*) as users_above15 from FACEBOOK 
 where age>15;

-- query to find the percentage of female users who are using social media.
select count(*)*100/ (select count(*) from facebook) AS female_percentage 
from FACEBOOK 
where gender='female' 
group by gender;

--query to find the percentage of female users among users above the age of 17.
select count(*)*100/ (select count(*) from facebook where age>17) AS female_percentage 
from FACEBOOK 
where gender='female' and age>17 
group by gender;
