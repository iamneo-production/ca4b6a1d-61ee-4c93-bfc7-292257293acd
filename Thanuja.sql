select * from facebook;
SELECT COUNT(*) AS TotalUsers
FROM facebook
WHERE DOB_YEAR = 1999;

create index idx_age on facbook(AGE);
select age,count(*) as usercount from facebook
group by age;

create index idx_dob_year on facebook(DOB_YEAR)
select count(*) as totalusers
from facebook where DOB_YEAR = 1999;