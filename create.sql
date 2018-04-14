PRAGMA foreign_keys=ON;
.mode columns
.headers on
.nullvalue NULL


drop table if exists Genre;
CREATE TABLE Genre(
	id 		integer PRIMARY KEY,
	name 	text not null
);

drop table if exists Language;
create table Language(
	id 		integer PRIMARY KEY,
	name	text not null
);

drop table if exists Publisher;
create table Publisher(
	id		integer PRIMARY KEY,
	name	text not null
);

drop table if exists Nationality;
create table Nationality(
	id		integer PRIMARY KEY,
	name	text not null
);

drop table if exists Book;
create table Book(
	id			integer PRIMARY KEY,
	ISBN		integer not null UNIQUE,
	title		text not null,
	year		integer not null,
	edition		integer not null,
	language	integer references Language not null,
	publisher	integer references Publisher not null
);

drop table if exists BookGenre;
create table BookGenre(
	idBook		integer references Book not null,
	idGenre 	integer references Genre not null,
	PRIMARY KEY(idBook, idGenre)
);

drop table if exists BookAuthor;
create table BookAuthor(
	idBook		integer references Book not null,
	idAuthor 	integer references Author not null,
	PRIMARY KEY(idBook, idAuthor)
);

drop table if exists Author;
create table Author(
	id			integer PRIMARY KEY,
	name		text not null,
	birthdate	date not null
);

drop table if exists AuthorNationality;
create table AuthorNationality(
	author		integer references Author not null,
	nationality integer references Nationality not null,
	PRIMARY KEY(author, nationality)
);

drop table if exists Location;
create table Location(
	id		integer PRIMARY KEY,
	pCode	integer not null UNIQUE,
	name	text not null
);

drop table if exists User;
create table User(
	id			integer PRIMARY KEY,
	name		text not null,
	address		text not null,
	location	references Location not null
);

drop table if exists UserNationality;
create table UserNationality(
	user		integer references User not null,
	nationality integer references Nationality not null,
	PRIMARY KEY(user, nationality)
);

drop table if exists BookItem;
create table BookItem(
	id				integer PRIMARY KEY,
	insertionDate	date not null,
	book			integer references Book not null,
	owner			integer references User not null
);
	
drop table if exists Sharing;
create table Sharing(
	id			integer PRIMARY KEY,
	startDate	date not null,
	endDate		date,
	book		integer references Book not null,
	receives	integer references User not null,
	check(endDate >= startDate)
);

drop table if exists Request;
create table Request(
	id			integer PRIMARY KEY,
	bookTitle	text check(length(bookTitle) <= 40),
	authorName	text check(length(authorName) <= 40),
	isFulfilled	integer,
	requester 	integer references User not null,
	check(bookTitle not null || authorName not null)
);

drop table if exists Message;
create table Message(
	id			integer PRIMARY KEY,
	date		date not null,
	body		text not null check(length(body) <= 500),
	receives	integer references User not null,
	senver		integer references User not null,
	context		integer references BookItem not null
);