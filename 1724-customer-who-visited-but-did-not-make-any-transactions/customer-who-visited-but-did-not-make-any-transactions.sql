# Write your MySQL query statement below
select customer_id,count(*) as count_no_trans from Visits
left join Transactions
on Transactions.visit_id=visits.visit_id
where transaction_id is null
group by customer_id;