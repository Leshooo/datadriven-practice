select count(distinct owner_id) as distinct_owners
from api_tokens
where issued like '2026%'
