.mode	columns
.headers	on
.nullvalue	NULL

--Users Responsivos a Mensagens

select * from message where receiver = 1 order by date asc;

