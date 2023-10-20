select distinct city,count(c.customer_id) over (partition by city) as ct
from city cit
join address ad on cit.city_id =ad.city_id
join customer c on ad.address_id=c.address_id
order by count(c.customer_id) over (partition by city) desc