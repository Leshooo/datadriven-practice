select top(3)
       department, count(*) as high_earner_count
from employees
where salary > 100000
group by department
order by high_earner_count desc , department asc
