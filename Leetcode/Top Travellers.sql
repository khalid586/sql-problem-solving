select name,  coalesce(sum(rides.distance), 0) as traveled_distance
from users 
left join rides on users.id = rides.user_id 
group by users.id 
order by traveled_distance desc, name asc