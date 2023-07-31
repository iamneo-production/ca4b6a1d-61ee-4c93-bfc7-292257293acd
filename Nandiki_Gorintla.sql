SELECT COUNT(*) AS TOTAL_Users
FROM Facebook
WHERE Dob_YEAR = 1999;

SELECT Age, COUNT(*) AS Count_Users
FROM Facebook
GROUP BY Age
order by Age Asc;

SELECT COUNT(*) AS Above15_Count
FROM Facebook
WHERE AGE > 15;

SELECT COUNT(*)* 100/ (SELECT COUNT(*) FROM FaceBook)AS FemalePercentage
FROM Facebook
WHERE GENDER = 'female'
group by gender;

SELECT COUNT(*)* 100/ (SELECT COUNT(*) FROM Facebook where age>17)AS FemalePercentage
FROM Facebook
WHERE Age > 17 AND GENDER = 'female'
GROUP BY GENDER;