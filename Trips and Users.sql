select request_at as day, cast(sum(case when status <> 'completed' then 1.0 else 0.0 end)/count(*) as decimal(10,2)) as 'cancellation rate' 
from trips t join users rider on t.client_id = rider.users_id 
join users driver on t.driver_id = driver.users_id
where t.request_at between '2013-10-01' and '2013-10-03'
and rider.banned = 'No'
and driver.banned = 'No'
group by request_at