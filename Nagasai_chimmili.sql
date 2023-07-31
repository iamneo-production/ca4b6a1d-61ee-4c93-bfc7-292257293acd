
-- Query To Find The TOTAL Number Of Users Who Were Born In The Year 1999.
SELECT Count(*) as Total_users From FaceBook
Where DOB_Year=1999;



-- Query To Count The Number Of Social Media Users For Each Age Group.
Select AGE, COUNT(*) As Count_Users From FACEBOOK Group By AGE Order By Age Asc;


--Query To Find Total Users In Social Media Above Age 15.
Select Count(*) As above15_count From FACEBOOK Where Age>15;

-- Query To Find The Percentage Of Female Users Who Are Using Social Media.
Select Count(*)*100/ (Select Count(*) From Facebook) AS Femalepercentage From FACEBOOK Where Gender='female' Group By Gender;

--Query To Find The Percentage Of Female Users Among Users Above The Age Of 17.
Select Count(*)*100/ (Select Count(*) From Facebook Where Age>17) AS Femalepercentage From FACEBOOK Where Gender='female' And Age>17 Group By Gender;