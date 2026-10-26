select distinct d.os_name,
       avg(us.session_duration_sec) as avg_duration
from devices as d
inner join user_sessions as us
on d.device_id = us.device_id
where d.device_type = 'mobile'
group by d.os_name 
order by avg_duration desc
limit 1
