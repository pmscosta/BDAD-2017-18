.mode	columns
.headers	on
.nullvalue	NULL

drop view if exists userAuthor;

--Livros recomendados

create view userAuthor as
 	select user.name, author.name, author.id 
	from sharing, user, bookItem, bookAuthor, book, author 
	where sharing.receiver = user.id 
	      and bookItem.id = sharing.book
	      and bookItem.book = Book.id 
	      and bookAuthor.idBook = Book.id
	      and author.id = bookAuthor.idauthor 
	      and sharing.receiver = 3;

select distinct author.name as Author, book.title as Title
from userAuthor, book, bookAuthor, author
where userAuthor.id = author.id 
      and bookAuthor.idAuthor = userAuthor.id
      and book.id = bookAuthor.idBook
      limit 4;
