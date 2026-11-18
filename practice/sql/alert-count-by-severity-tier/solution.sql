select COALESCE(ack_by,'unassigned') as responder,
       count(*) alert_count
from alert_events
group by responder
