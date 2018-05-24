.mode	columns
.headers	on
.nullvalue	NULL

drop view if exists userAuthor;

--Autores favoritos de um user

create view userAuthor as
 	select author.name, count(*) as numOccurences
	from sharing, user, bookItem, bookAuthor, book, author 
	where sharing.receiver = user.id 
	      and bookItem.id = sharing.book
	      and bookItem.book = Book.id 
	      and bookAuthor.idBook = Book.id
	      and author.id = bookAuthor.idauthor 
	      and sharing.receiver = 1
	group by author.name;


select userAuthor.name as FavoriteAuthors
	from userAuthor, (select max(numOccurences) as maxOccurence from userAuthor)
	where userAuthor.numOccurences >= maxOccurence;
