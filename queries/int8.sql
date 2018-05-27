.mode	columns
.headers	on
.nullvalue	NULL

--Users Responsivos a Mensagens

select sender, time(0.5 + avg(timeElapsed)) as averageTimeResponse from 
(select M1.sender as sender,  julianday(M1.date) - julianday(M2.date) as timeElapsed from message M1 join message M2 
where ( M1.id > M2.id and M1.context = M2.context) group by M1.id having (M2.id = max(M2.id) and M2.sender <> M1.sender))
group by sender order by avg(timeElapsed);

