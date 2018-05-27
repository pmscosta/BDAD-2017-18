.mode	columns
.headers	on
.nullvalue	NULL

--Autores favoritos

select name
from
	(select idAuthor, count(*) as cnt
	from
		(select *
		from Sharing S, BookItem BI, BookAuthor BA
		where S.book = BI.id and BI.book = BA.idBook)
		group by idAuthor), Author A
	where idAuthor = A.id
order by cnt desc
LIMIT 3;



