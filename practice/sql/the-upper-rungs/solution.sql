with highest as(
select metric_value, row_number() over(partition by metric_value) rnk
from employee_metrics
order by metric_value desc
)
select metric_value as benchmark_value
from highest
where rnk = 1
limit 5
