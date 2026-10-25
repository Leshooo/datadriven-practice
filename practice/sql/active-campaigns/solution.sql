select ad_campaign,
       count(*) as impressions,
       sum(revenue) as total_revenue,
       round(sum(clicked)*100.0/count(*),1) as ctr
from ad_impressions 
group by ad_campaign
having impressions > 15
order by ctr desc ,ad_campaign ;
