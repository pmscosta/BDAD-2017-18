.mode	columns
.headers	on
.nullvalue	NULL

--Tempo Médio de Empréstimo 

select avg(totalTime) 
from (select julianday(endDate) -julianday( startDate) as totalTime 
	from sharing 
	where endDate is not null
	group by book);

