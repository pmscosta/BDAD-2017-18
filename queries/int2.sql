.mode	columns
.headers	on
.nullvalue	NULL

--Ranking de user mais ativos

select User.name, count(*) as shares 
from user, sharing 
where sharing.sender = user.id 
group by sender 
order by shares desc limit 3;
