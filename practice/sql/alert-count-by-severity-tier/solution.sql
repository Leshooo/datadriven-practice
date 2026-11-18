select CASE WHEN ack_by is null then 'unassigned' else ack_by end as resopnder,
       count(*) alert_count
from alert_events
group by CASE WHEN ack_by is null then 'unassigned' else ack_by end
