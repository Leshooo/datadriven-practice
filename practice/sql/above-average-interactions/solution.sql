with counted as (
  select user_id,
         count(session_id) as total_sessions
  from user_sessions
  group by user_id
),
total as (
   select user_id,
          total_sessions,
          AVG(total_sessions) OVER () as average
   from counted
 )
Select user_id,
       total_sessions
from total
where total_sessions > average
order by total_sessions desc, user_id asc;
