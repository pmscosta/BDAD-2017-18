.mode	columns
.headers	on
.nullvalue	NULL

--Pessoas com gostos em comum

select user.name, genre.name
	from genre inner join bookGenre on genre.id = bookGenre.idGenre
	inner join Book on bookGenre.idBook = book.id
	inner join bookItem on book.id = BookItem.book
	inner join user on user.id = bookItem.owner;


select A.name, B.name from user A join user B

where A.id < B.id;


/**
	(select genre.name from genre, book, bookGenre, bookItem
		where bookItem.owner = A.id
		and bookItem.book = book.id
		and bookGenre.idBook = book.id
		and genre.id = bookGenre.idGenre) as genreA,

	(select genre.name from genre, book, bookGenre, bookItem
		where bookItem.owner = B.id
		and bookItem.book = book.id
		and bookGenre.idBook = book.id
		and genre.id = bookGenre.idGenre) as genreB
**/


select genre.name from genre, user, book, bookGenre, bookItem
		where bookItem.owner = user.id
		and bookItem.book = book.id
		and bookGenre.idBook = book.id
		and genre.id = bookGenre.idGenre
		and user.id = 3;
