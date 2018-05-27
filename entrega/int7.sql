.mode	columns
.headers	on
.nullvalue	NULL

--Livros Disponíveis

select book.title
from 
	(select book as idBook
	from bookItem
	except
	select bookItem.book as idBook
	from sharing, bookItem
	where endDate is null and sharing.book = bookItem.id
	), book
where idBook = book.id;