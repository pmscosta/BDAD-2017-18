PRAGMA foreign_keys=ON;
.mode columns
.headers on


drop table if exists Genre;
CREATE TABLE Genre(
	id 	integer PRIMARY KEY,
	name 	text not null UNIQUE
);

drop table if exists Language;
create table Language(
	id 	integer PRIMARY KEY,
	name	text not null UNIQUE
);

drop table if exists Publisher;
create table Publisher(
	id	integer PRIMARY KEY,
	name	text not null UNIQUE
);

drop table if exists Nationality;
create table Nationality(
	id	integer PRIMARY KEY,
	name	text not null UNIQUE
);

drop table if exists Book;
create table Book(
	id		integer PRIMARY KEY,
	ISBN		integer not null UNIQUE,
	title		text not null,
	year		integer not null,
	edition		integer not null,
	language	integer not null references Language on delete restrict,
	publisher	integer not null references Publisher on delete restrict
);

drop table if exists BookGenre;
create table BookGenre(
	idBook		integer not null references Book on delete restrict, 
	idGenre 	integer not null references Genre on delete restrict, 
	PRIMARY KEY(idBook, idGenre)
);

drop table if exists BookAuthor;
create table BookAuthor(
	idBook		integer not null references Book on delete restrict,
	idAuthor 	integer not null references Author on delete restrict,
	PRIMARY KEY(idBook, idAuthor)
);

drop table if exists Author;
create table Author(
	id		integer PRIMARY KEY,
	name		text not null,
	birthdate	date not null
);

drop table if exists AuthorNationality;
create table AuthorNationality(
	author		integer not null references Author on delete restrict,
	nationality 	nteger not null references Nationality on delete restrict,
	PRIMARY KEY(author, nationality)
);

drop table if exists Location;
create table Location(
	id	integer PRIMARY KEY,
	pCode	integer not null UNIQUE,
	name	text not null
);

drop table if exists User;
create table User(
	id		integer PRIMARY KEY,
	name		text not null,
	address		text not null,
	location	text not null references Location on delete restrict
);

drop table if exists UserNationality;
create table UserNationality(
	user		integer not null references User on delete restrict,
	nationality 	integer not null references Nationality on delete restrict,
	PRIMARY KEY(user, nationality)
);

drop table if exists BookItem;
create table BookItem(
	id		integer PRIMARY KEY,
	insertionDate	date not null,
	book		integer not null references Book on delete restrict,
	owner		integer not null references User on delete cascade
);
	
drop table if exists Sharing;
create table Sharing(
	startDate	date not null,
	endDate		date,
	book		integer not null references BookItem on delete cascade,
	receives	integer references User on delete set null,
	PRIMARY KEY(startDate, book, receives),
	UNIQUE(endDate, book),
	check(endDate >= startDate)
);

drop table if exists Request;
create table Request(
	id		integer PRIMARY KEY,
	bookTitle	text check(length(bookTitle) <= 40),
	authorName	text check(length(authorName) <= 40),
	isFulfilled	integer DEFAULT 0, 
	requester 	integer not null references User on delete cascade,
	check(bookTitle is not null or authorName is not null)
);

drop table if exists Message;
create table Message(
	id		integer PRIMARY KEY,
	date		date not null,
	body		text not null check(length(body) <= 500),
	receives	integer not null references User on delete cascade,
	sender		integer not null references User on delete cascade,
	context		integer references BookItem on delete cascade
);
