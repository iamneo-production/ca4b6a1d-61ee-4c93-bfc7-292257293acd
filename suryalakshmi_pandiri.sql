---- Query to Find the total number of users who were born in the year 1999.

Select Count(*) as Totalusers

FROM Facebook

Where Dob_year=1999;

 

---- Query to Count the number of social media users for each age group.`



Select Age, Count(*) as Usercount FROM FACEBOOK 

Group By AGE 

ORDER by AGE asc;

 

----Query to Find total users in Social Media above age 15.


Select count(*) as TotalUsers FROM Facebook

Where Age>15;



----- Query To Find The Percentage Of Female users Who Are Using social media.


SELECT Count(*)*100/ (Select Count(*) From Facebook) as Femalepercentage From Facebook   

Where Gender='female' Group By Gender;

 


-----  Query To Find The Percentage Of Female Users Among Users above the age Of 17.


Select Count(*)*100/ (Select Count(*) From Facebook Where Age>17) as Femalepercentage

From Facebook Where Gender='female' And Age>17 
 
Group By Gender;