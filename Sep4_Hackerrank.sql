select N,
case 
when P is null then "Root"
else
case when N in (select distinct b1.P from BST b1) then "Inner"
else "Leaf"
end
end as nodetype
from BST
order by N;

select distinct C.company_code,  C.founder, count(distinct(E.lead_manager_code)),
count(distinct(senior_manager_code)), count(distinct(E.manager_code)), count(distinct(employee_code))
from company C join employee E on C.company_code = E.company_code
group by C.company_code, C.founder;
