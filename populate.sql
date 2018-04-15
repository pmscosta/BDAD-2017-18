PRAGMA foreign_keys=ON;
.mode columns
.headers on
.nullvalue NULL

INSERT INTO Language VALUES(1, 'English');

INSERT INTO Publisher VALUES(1, 'Bloomsbury');

INSERT INTO Genre VALUES(1, 'Fantasy');

INSERT INTO Author VALUES(1, 'J. K. Rowling', '1965/07/31');

INSERT INTO Location VALUES(1, 4470111, 'Maia');
INSERT INTO Location VALUES(2, 74120, 'Ban Phaeo');
INSERT INTO Location VALUES(3, 95000, 'Yala');

INSERT INTO Location VALUES(4, 2080381, 'Cortiçóis');
INSERT INTO Location VALUES(5, 66540, 'Stare Kurowo');
INSERT INTO Location VALUES(6, 37, 'Athlone');
INSERT INTO Location VALUES(7, 25187, 'Helsingborg');
INSERT INTO Location VALUES(8, 3501213, 'Takahagi');
INSERT INTO Location VALUES(9, 13461, 'Ingarö');

INSERT INTO User VALUES(1, 'Margarida Silva', 'Avenida Rosal', 1);
INSERT INTO User VALUES(2, 'Zsa zsa Ruddock', '58 Thierer Pass', 2);

INSERT INTO User VALUES(3, 'Seline Currington', '2810 Pearson Park', 3);

INSERT INTO User VALUES(4, 'Billi Espinha', '9608 Raven Trail', 4);

INSERT INTO User VALUES(5, 'Alvera Baudain', '612 Mayer Park', 5);

INSERT INTO User VALUES(6, 'Danice Skeete', '749 Ilene Avenue', 6);

INSERT INTO User VALUES(7, 'Florentia Kelledy', '2 Towne Crossing', 7);

INSERT INTO User VALUES(8, 'Yettie O''Hdirscoll', '15 Stang Avenue', 7);

INSERT INTO User VALUES(9, 'Dorita Kivlin', '39 Manufacturers Alley', 8);

INSERT INTO User VALUES(10, 'Jeniece Smithyman', '00006 Mosinee Way', 9);



INSERT INTO Nationality VALUES(1, 'Portuguese');
INSERT INTO Nationality VALUES(2, 'British');

INSERT INTO UserNationality VALUES(1, 1);

INSERT INTO AuthorNationality VALUES(1, 2);

INSERT INTO Book VALUES(1, 9780747532743, 'Harry Potter and the Philosopher´s Stone', 1997, 1, 1, 1);
INSERT INTO Book VALUES(2, 9780747538486, 'Harry Potter and the Chamber of Secrets', 1998, 1, 1, 1);
INSERT INTO Book VALUES(3, 9780747546290, 'Harry Potter and the Prisoner of Azkaban', 1999, 1, 1, 1);
INSERT INTO Book VALUES(4, 9780747574507, 'Harry Potter and the Goblet of Fire', 2000, 1, 1, 1);
INSERT INTO Book VALUES(5, 9780439358064, 'Harry Potter and the Order of the Phoenix', 2003, 1, 1, 1);
INSERT INTO Book VALUES(6, 9780439784542, 'Harry Potter and the Half-Blood Prince', 2005, 1, 1, 1);
INSERT INTO Book VALUES(7, 9780747591054, 'Harry Potter and the Deathly Hallows', 2007, 1, 1, 1);

INSERT INTO BookItem VALUES(1, '2018/04/14', 1, 1);
INSERT INTO BookItem VALUES(2, '2018/04/14', 2, 1);
INSERT INTO BookItem VALUES(3, '2018/04/14', 3, 1);
INSERT INTO BookItem VALUES(4, '2018/04/14', 4, 1);
INSERT INTO BookItem VALUES(5, '2018/04/14', 5, 1);
INSERT INTO BookItem VALUES(6, '2018/04/14', 6, 1);
INSERT INTO BookItem VALUES(7, '2018/04/14', 7, 1);

INSERT INTO BookGenre VALUES(1, 1);
INSERT INTO BookGenre VALUES(2, 1);
INSERT INTO BookGenre VALUES(3, 1);
INSERT INTO BookGenre VALUES(4, 1);
INSERT INTO BookGenre VALUES(5, 1);
INSERT INTO BookGenre VALUES(6, 1);
INSERT INTO BookGenre VALUES(7, 1);

INSERT INTO BookAuthor VALUES(1, 1);
INSERT INTO BookAuthor VALUES(2, 1);
INSERT INTO BookAuthor VALUES(3, 1);
INSERT INTO BookAuthor VALUES(4, 1);
INSERT INTO BookAuthor VALUES(5, 1);
INSERT INTO BookAuthor VALUES(6, 1);
INSERT INTO BookAuthor VALUES(7, 1);