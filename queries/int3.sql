.mode	columns
.headers	on
.nullvalue	NULL

--Pessoas com gostos em comum
--Pelo menos já leram dois livros do mesmo género		

select A.name, B.name from user A join user B
	where A.id < B.id and

	(select count(*) >= 2 from (

	select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and A.id = user.id

	intersect 

	select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and B.id = user.id

	) );
/**
-- Géneros de livros que uma pessoa já teve/tem/partilhou
select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and user.id = 6;
**/
