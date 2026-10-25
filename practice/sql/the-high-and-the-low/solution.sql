with high_low as(
      SELECT *,
       rank() over(partition by region order by latency desc) as rank_high,
       rank() over(partition by region order by latency) as rank_low
       FROM svc_health
       where region like 'us%' AND latency is not null
)
select svc_name,
       region,
       latency,
       case when rank_high = 1 then 'highest'
            when  rank_low= 1 then 'lowest'
       end as latency_type
from high_low
where rank_high = 1 or rank_low = 1
