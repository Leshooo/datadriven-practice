select u.username,sum(ai.revenue) total_revenue
from users u
left join ad_impressions ai
on u.user_id = ai.user_id
where ai.clicked >=1
group by u.username
order by total_revenue desc
