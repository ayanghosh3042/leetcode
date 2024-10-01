# Write your MySQL query statement below
select a.machine_id,
round((a.processing_time-b.processing_time)/a.c,3) as processing_time 
from(
select machine_id,
sum(timestamp) as processing_time,
count(machine_id) as c 
from Activity
where activity_type='end'
group by machine_id)as a
inner join
(select machine_id,sum(timestamp) as processing_time from Activity
where activity_type='start'
group by machine_id) as b
on a.machine_id =b.machine_id;

-- select machine_id,sum(timestamp) as processing_time from Activity
-- where activity_type='start'
-- group by machine_id;