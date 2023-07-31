-- Query that Find the total number of users who were born in the year 1999.
 Select count(*) as Total_users froM Facebook where Dob_YeaR = 1999;



-- Query that Count the number of social media users for each age group.`
 select Age, count(*) as Users_count from FACEBOOK Group BY AgE ORDER by AgE ASC;



 --Query that Find total users in Social Media above age 15.
 Select count(*) AS count_users from FACeBOOK where AgE>15;



 -- Query that Find the percentage of Female users who are using Social media.
 Select count(*)*100/ (select counT(*) from facebook) AS Percentage From FACEbOOK Where GendeR='female' Group By GendeR;


--Query that find the percentage of female users among users above the age of 17.
select count(*)*100/ (selecT count(*) from facebook where age>17) AS percentage from FacebOok  Where Gender='female' AND age>17 Group bY Gender;