select job_id,
       job_name,
       DATEDIFF('minute',started,ended) as minutes_elapsed
from batch_jobs
where ended is null or ended < started
