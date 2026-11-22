select p.product_name,
       sum(t.total_amount) total_revenue
from transactions t
left join products p
on t.product_id = p.product_id
where product_name is not null
group by p.product_name
order by total_revenue desc
limit 5;
