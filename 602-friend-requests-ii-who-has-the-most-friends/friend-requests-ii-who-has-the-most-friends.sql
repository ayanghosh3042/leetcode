# Write your MySQL query statement below
select *
from
(select *,count(*) as num
from(select requester_id as id from RequestAccepted
union all
select accepter_id from RequestAccepted) d
group by id ) as c
where num=(
select max(num) as nmax
from
(select *,count(*) as num
from(select requester_id as id from RequestAccepted
union all
select accepter_id from RequestAccepted) a
group by id ) as b)