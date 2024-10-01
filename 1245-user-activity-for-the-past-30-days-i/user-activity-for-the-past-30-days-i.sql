# Write your MySQL query statement below
select
    *
from (select 
    activity_date as day,
    count(distinct user_id) as active_users
from Activity
group by activity_date) a
where day between date_add('2019/07/27',INTERVAL -29 DAY) and '2019/07/27';

