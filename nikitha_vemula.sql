-- Query To Find The TOTAL Number Of USERS Who Were Born In The Year 1999.
SELECT Count(*) as TOTAL_users From FaceBook
Where DOB_Year=1999;

-- Query To Count The Number Of SOCIAL MEDIA USERS For Each Age Group.
Select AGE, COUNT(*) As Count_USERS From FACEBOOK Group By AGE Order By Age Asc;


--Query To Find Total Users In SOCIAL MEDIA Above Age 15.
Select Count(*) As ABOVE15_count From FACEBOOK Where Age>15;

-- Query To Find The Percentage Of FEMALE USERS Who Are Using SOCIAL MEDIA.
Select Count(*)*100/ (Select Count(*) From Facebook) AS FEMALEPERCENTAGE From FACEBOOK 
Where Gender='female' GROUP BY Gender;

--Query To Find The Percentage Of FEMALE Users Among Users Above The Age Of 17.
Select Count(*)*100/ (Select Count(*) From Facebook Where AGE>17) AS FEMALEPERCENTAGE From FACEBOOK 
Where Gender='female' And Age>17 Group By Gender;
