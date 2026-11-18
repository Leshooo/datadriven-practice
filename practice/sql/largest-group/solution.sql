with highest as(
select department, count(*) as high_earner_count,
rank() over(order by count(*) desc) rnk
from employees
where salary > 100000
group by department
order by high_earner_count desc , department asc
)
select department, high_earner_count
from highest
where rnk =1
