select u.user_id , count(distinct ed.event_type)
from users as u
left join event_data ed
on u.user_id = ed.user_id
group by u.user_id
