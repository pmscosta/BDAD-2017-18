.mode	columns
.headers	on
.nullvalue	NULL

--Pessoas com gostos em comum


-- Géneros de livros que uma pessoa já teve/tem/partilhou
select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and user.id = 1;
		

select A.name, B.name from user A join user B
	where A.id < B.id and

	not exists (

		select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and A.id = user.id

	except 


		select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and B.id = user.id

	);
/**




	(select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and A.id = user.id) =
	(select distinct genre.name as Genres from sharing, user, bookItem, book, genre, bookGenre
	where ((( sharing.receiver = user.id or sharing.sender = user.id)
		and bookItem.id = sharing.book ) or
		bookItem.owner = user.id)
		and book.id = bookItem.book
		and bookGenre.idBook = book.id
		and bookGenre.idGenre = genre.id
		and B.id = user.id);


/**

select A.name, B.name from user A join user B
	where A.id < B.id and
	(select count(*) 
	from genre inner join bookGenre on genre.id = bookGenre.idGenre
		inner join Book on bookGenre.idBook = book.id
		inner join bookItem on book.id = BookItem.book
		inner join user on user.id = bookItem.owner
	where A.id = user.id) >
	(select count(*) 
	from genre inner join bookGenre on genre.id = bookGenre.idGenre
		inner join Book on bookGenre.idBook = book.id
		inner join bookItem on book.id = BookItem.book
		inner join user on user.id = bookItem.owner
	where B.id = user.id);


select user.name, genre.name
	from genre inner join bookGenre on genre.id = bookGenre.idGenre
	inner join Book on bookGenre.idBook = book.id
	inner join bookItem on book.id = BookItem.book
	inner join user on user.id = bookItem.owner;


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


select genre.name from genre, user, book, bookGenre, bookItem
		where bookItem.owner = user.id
		and bookItem.book = book.id
		and bookGenre.idBook = book.id
		and genre.id = bookGenre.idGenre
		and user.id = 3;

**/
