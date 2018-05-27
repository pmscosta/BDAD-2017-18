.mode	columns
.headers	on
.nullvalue	NULL

--Requests que foram cumpridos e quem partilhou o livro que possibilitou

select distinct request.id as ID, request.bookTitle as Book, request.requester, sharing.sender
	from request, sharing join book join bookItem join bookAuthor join Author
	where isFulfilled = 1 and
	(title LIKE ('%' || request.bookTitle || '%') or authorName LIKE ('%' || author.name || '%'))
	and request.requester = sharing.receiver
	order by sharing.startDate LIMIT 1;
