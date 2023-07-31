-- query to find the total number of users who were born in the year 1999.

select count(*) AS totalusers_ from facebook  
where dob_year=1999 ;
-- query to count the number of social media users for each age group.

select age, count(*) as agecount_ from FACEBOOK  
Group by age   
Order by age asc;
--query to find total users in social media above age 15.

select count(*) as users from FACEBOOK 
Where age>15;
-- query to find the percentage of female users who are using social media.

select count(*)*100/ (select count(*) from facebook) AS femalePercentage 
from FACEBOOK where Gender='female'  
Group by Gender;
--query to find the percentage of female users among users above the age of 17.

select count(*)*100/ (select count(*) from facebook where age>17) AS femalePercentage 
from FACEBOOK where gender='female' and age>17 
group by Gender;