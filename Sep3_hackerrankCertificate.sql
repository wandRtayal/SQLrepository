select C1.city_name as city, P1.product_name as product, round(sum(II1.line_total_price),2) as amount
from city C1 join customer CU1 on C1.id = CU1.city_id 
join invoice I1 on CU1.id = I1.customer_id
join invoice_item II1 on I1.id = II1.invoice_id
join product P1 on II1.product_id = P1.id
group by C1.city_name, P1.product_name
order by amount desc, city asc, product asc;


select C.customer_name, round(sum(I.total_price),6) as amount
from customer C join invoice I on C.id = I.customer_id
group by C.customer_name
having sum(I.total_price) <= (0.25* (select avg(I2.total_price) from invoice I2))
order by amount desc;
