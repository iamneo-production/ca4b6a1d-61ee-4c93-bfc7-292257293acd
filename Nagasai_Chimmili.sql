
-- Query To Find The Total Number Of Users Who Were Born In The Year 1999.

Select Count(*) As Totalusers From Facebook
Where Dob_Year=1999;

-- Query To Count The Number Of Social Media Users For Each Age Group.`
Select Age, Count(*) As Usercount From FACEBOOK
Group By Age 
Order By Age Asc;

--Query To Find Total Users In Social Media Above Age 15.

Select Count(*) As Totalusers From FACEBOOK 
Where Age>15;

-- Query To Find The Percentage Of Female Users Who Are Using Social Media.
Select Count(*)*100/ (Select Count(*) From Facebook) AS Female_Percentage 
From FACEBOOK 
Where Gender='female' 
Group By Gender;

--Query To Find The Percentage Of Female Users Among Users Above The Age Of 17.
Select Count(*)*100/ (Select Count(*) From Facebook Where Age>17) AS Female_Percentage 
From FACEBOOK 
Where Gender='female' And Age>17 
Group By Gender;

