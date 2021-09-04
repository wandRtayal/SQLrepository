select W.id, WP.age, W.coins_needed, W.power 
from wands W join wands_property WP on W.code = WP.code
where WP.is_evil = 0 
    and W.coins_needed = (select min(W1.coins_needed) from wands W1 join wands_property WP1
                         on W1.code = WP1.code where W1.power = W.power and WP1.age = WP.age)
order by W.power DESC, WP.age DESC , W.coins_needed ASC;



select (e1.months*e1.salary) as earnings, count(e1.employee_id)
from employee e1
where e1.months*e1.salary = (select max(months*salary) from employee) 
group by earnings;


select round(sum(lat_n),2), round(sum(long_w),2)
from station;


select round(sum(lat_n),4)
from station
where lat_n > 38.7880 and lat_n < 137.2345;


select city, length(city) from station
order by length(city),city asc
limit 1;
select city, length(city) from station
order by length(city) desc, city asc
limit 1;

select S.name
from students S
where S.marks > 75
order by substr(S.name, (length(S.name)-2),3),S.id; 
