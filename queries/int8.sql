.mode	columns
.headers	on
.nullvalue	NULL

--Users Responsivos a Mensagens

select * from message 
	where sender = 1 or receiver = 1
	order by date asc; 
	--receiver in (select distinct receiver from message where sender = 1);

