select p.product_name,
       sum(t.total_amount) total_revenue
from transactions t
inner join products p
on t.product_id = p.product_id
group by p.product_name
order by total_revenue desc
limit 5;
