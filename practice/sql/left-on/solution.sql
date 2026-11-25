select flag_name,
       owner,
       CASE WHEN updated is null or enabled = 1 THEN 'Yes' ELSE 'No' END still_enabled,
       FLOOR(('2026-05-01'::date - created::date)/ 365)::int years_since_creation
from feat_flags
where ('2026-05-01'::date - created::date) >730
order by flag_name ,owner, years_since_creation desc, still_enabled
