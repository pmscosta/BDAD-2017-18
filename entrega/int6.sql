.mode	columns
.headers	on
.nullvalue	NULL

--Número de users por location


select location.name, count(*) as numOfUsers 
	from user join location
	where user.location = location.id
	group by location.id;
