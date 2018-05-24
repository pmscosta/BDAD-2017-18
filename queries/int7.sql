.mode	columns
.headers	on
.nullvalue	NULL

--Livros Disponíveis

select book.title from bookItem, book
	where bookItem.id not in (select book from sharing where endDate is null)
	      and bookItem.book = book.id;
