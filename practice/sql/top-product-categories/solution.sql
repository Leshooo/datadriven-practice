with ranked as (
  SELECT p.category,
       count(*) txn_count,
       dense_rank() over(order by count(*) desc) rnk
  from products p
  join transactions t
  on p.product_id = t.product_id
  where p.rating >= 3.0
  group by p.category
  order by txn_count desc
)
select category,txn_count,rnk
from ranked
where rnk <= 3
