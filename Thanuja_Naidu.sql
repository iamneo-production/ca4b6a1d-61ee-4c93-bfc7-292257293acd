-- Query To Find The TOTAL Number Of Users Who Were Born In The Year 1999.
SELECT Count(*) as Total_Users From faceBook
WherE DOB_Year=1999;

-- Query To Count The Number Of Social Media users For Each AGE Group.
Select AGE, COUNT(*) As  Count_Users From FACEBOOK group By AGE Order By AGe Asc;

-- Query To Find Total Users In social media Above Age 15.
Select Count(*) As above15_Count From fACEBOOK Where AGE>15;

-- Query To Find The Percentage Of Female Users Who Are using Social Media.
Select Count(*)*100/ (Select Count(*) From facebook) AS FemalePercentage From FACEBOOK Where gender='female' Group By GenDer;

-- Query To Find The percentage Of Female Users Among users Above The AGE Of 17.
Select Count(*)*100/ (Select Count(*) From facebook Where Age>17) AS FemalePercentage From FACEBOOK where Gender='female' And Age>17 Group By Gender;