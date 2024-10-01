# Write your MySQL query statement below
select a.product_id,first_year,quantity,price
from Sales a
inner join (select 
    product_id,
    min(year) as first_year
from Sales
group by product_id) b
on b.product_id=a.product_id and b.first_year=a.year;