---- Query to Find the total number of users who were born in the year 1999.

Select Count(*) AS Totalusers FROM Facebook

Where Dob_year=1999;

 

---- Query to Count the number of social media users for each age group.`

Select Age, Count(*) AS Usercount FROM FACEBOOK 

Group By AGE 

ORDER by AGE asc;

 

----Query to Find total users in Social Media above age 15.

Select count(*) AS TotalUsers FROM FACEBOOK 

Where Age>15;

 

---- Query to Find the percentage of Female users who are using Social media.

Select Count(*)*100/ (select count(*) from facebook) AS Female_Percentage 

From FACEBOOK 

Where Gender='female' 

Group By Gender;

 

----Query to find the percentage of female users among users above the age of 17.

Select Count(*)*100/ (Select Count(*) from facebook where age>17) AS Female_Percentage 

FROM Facebook 

Where Gender='female' and age>17 

Group by Gender;