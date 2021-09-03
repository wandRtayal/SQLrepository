select *
from city 
where id = 1661

select name
from city
where countrycode = 'JPN'


select distinct city from station
where id % 2 = 0


select count(city) - count(distinct city) 
from station

select city
from station
where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%'


select distinct city
from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u'


select distinct city
from station
where right(city,1) in ('a','e','i','o','u') and left(city,1) in ('a','e','i','o','u') 


select distinct city
from station
where left(city,1) not in ('a','e','i','o','u') 




SELECT IF(GRADE < 8, NULL, NAME), GRADE, MARKS
FROM STUDENTS JOIN GRADES
WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC, NAME;


select sum(C.population)
from city as C join country as CO on C.countrycode = CO.code
where CO.continent = 'Asia';


select C.name
from city C join country CO on C.countrycode = CO.code
where CO.continent = 'Africa'


select CO.continent, floor(avg(C.population))
from city C join country CO on C.countrycode = CO.code
group by CO.continent;




