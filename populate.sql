PRAGMA foreign_keys=ON;
.mode columns
.headers on
.nullvalue NULL

INSERT INTO Language VALUES(1, 'English');
INSERT INTO Language VALUES(2, 'Portuguese');
INSERT INTO Language VALUES(3, 'Filipino');

INSERT INTO Language VALUES(4, 'Catalan');

INSERT INTO Language VALUES(5, 'Zulu');

INSERT INTO Language VALUES(6, 'Papiamento');

INSERT INTO Language VALUES(7, 'Guaraní');

INSERT INTO Language VALUES(8, 'Macedonian');

INSERT INTO Language VALUES(9, 'Quechua');

INSERT INTO Language VALUES(10, 'Aymara');

INSERT INTO Publisher VALUES(1, 'Bloomsbury');
INSERT INTO Publisher VALUES(2, 'Leya');
INSERT INTO Publisher VALUES(3, 'Corgi Books');

INSERT INTO Genre VALUES(1, 'Fantasy');
INSERT INTO Genre VALUES(2, 'Romance');
INSERT INTO Genre VALUES(3, 'Thriller');
INSERT INTO Genre VALUES (4, 'Drama');

INSERT INTO Genre VALUES (5, 'Crime');

INSERT INTO Genre VALUES (6, 'Sci-Fi');

INSERT INTO Author VALUES(1, 'J. K. Rowling', '1965/07/31');
INSERT INTO Author VALUES(2, 'Mia Couto', '1955/07/05');
INSERT INTO Author VALUES(3, 'Dan Brown', '1964/06/22');
INSERT INTO Author VALUES(4, 'Sophia de Mello Breyner', '1963/02/12');

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
INSERT INTO Nationality VALUES(3, 'Mozambincan');
INSERT INTO Nationality VALUES(4, 'German');
INSERT INTO Nationality VALUES(5, 'French');
INSERT INTO Nationality VALUES(6, 'Italian');


INSERT INTO UserNationality VALUES(1, 1);
INSERT INTO UserNationality VALUES(2, 2);
INSERT INTO UserNationality VALUES(3, 4);
INSERT INTO UserNationality VALUES(4, 2);

INSERT INTO AuthorNationality VALUES(1, 2);
INSERT INTO AuthorNationality VALUES(2, 3);

INSERT INTO Book VALUES(1, 9780747532743, 'Harry Potter and the Philosopher´s Stone', 1997, 1, 1, 1);
INSERT INTO Book VALUES(2, 9780747538486, 'Harry Potter and the Chamber of Secrets', 1998, 1, 1, 1);
INSERT INTO Book VALUES(3, 9780747546290, 'Harry Potter and the Prisoner of Azkaban', 1999, 1, 1, 1);
INSERT INTO Book VALUES(4, 9780747574507, 'Harry Potter and the Goblet of Fire', 2000, 1, 1, 1);
INSERT INTO Book VALUES(5, 9780439358064, 'Harry Potter and the Order of the Phoenix', 2003, 1, 1, 1);
INSERT INTO Book VALUES(6, 9780439784542, 'Harry Potter and the Half-Blood Prince', 2005, 1, 1, 1);
INSERT INTO Book VALUES(7, 9780747591054, 'Harry Potter and the Deathly Hallows', 2007, 1, 1, 1);
INSERT INTO Book VALUES(8, 9789722127974, 'Jesusalém', 2012, 13, 2, 2);
INSERT INTO Book VALUES(9, 9780552160896, 'Angels and Demons', 2000, 14, 1, 3);  

INSERT INTO BookItem VALUES(1, '2018/04/01', 1, 1);
INSERT INTO BookItem VALUES(2, '2018/04/01', 2, 1);
INSERT INTO BookItem VALUES(3, '2018/04/01', 3, 1);
INSERT INTO BookItem VALUES(4, '2018/04/01', 4, 1);
INSERT INTO BookItem VALUES(5, '2018/04/01', 5, 1);
INSERT INTO BookItem VALUES(6, '2018/04/01', 6, 1);
INSERT INTO BookItem VALUES(7, '2018/04/01', 7, 1);
INSERT INTO BookItem VALUES(8, '2018/04/01', 8, 1);
INSERT INTO BookItem VALUES(9, '2018/04/01', 9, 1);

INSERT INTO BookGenre VALUES(1, 1);
INSERT INTO BookGenre VALUES(2, 1);
INSERT INTO BookGenre VALUES(3, 1);
INSERT INTO BookGenre VALUES(4, 1);
INSERT INTO BookGenre VALUES(5, 1);
INSERT INTO BookGenre VALUES(6, 1);
INSERT INTO BookGenre VALUES(7, 1);
INSERT INTO BookGenre VALUES(8, 2);
INSERT INTO BookGenre VALUES(9, 3);

INSERT INTO BookAuthor VALUES(1, 1);
INSERT INTO BookAuthor VALUES(2, 1);
INSERT INTO BookAuthor VALUES(3, 1);
INSERT INTO BookAuthor VALUES(4, 1);
INSERT INTO BookAuthor VALUES(5, 1);
INSERT INTO BookAuthor VALUES(6, 1);
INSERT INTO BookAuthor VALUES(7, 1);
INSERT INTO BookAuthor VALUES(8, 2);
INSERT INTO BookAuthor VALUES(9, 3);

INSERT INTO Message VALUES(1, '2018/04/10','Hey, how are you?', 1, 2, 1);

INSERT INTO Message VALUES(2, '2018/04/10','Good, and you?', 2, 1, 1);

INSERT INTO Message VALUES(3, '2018/04/10','I am fine, thank you. About the book, can you meet me downton?', 1, 2, 1);


INSERT INTO Message VALUES(4, '2018/04/10','Yeah, no problem. What time?', 2, 1, 1);
INSERT INTO Message VALUES(5, '2018/04/10','Around 2 p.m, is that fine for you?', 1, 2, 1);

INSERT INTO Message VALUES(6, '2018/04/12','Hey, excellent book, did you enjoy reading it?', 3, 4, 5);

INSERT INTO Message VALUES(7, '2018/04/13','It is levi-o-sa, not leviosá', 7, 9, 2);



INSERT INTO Request VALUES(1, 'Os Maias', 'Eça de Queiroz', 0, 3);

INSERT INTO Request VALUES(2, 'O crime do Padre Amaro',  'Eça de Queiroz', 0, 5);

INSERT INTO Request VALUES(3, 'Viagens na minha terra', 'Almeira Garret', 0, 7);

INSERT INTO Request VALUES(4, 'A ilustre casa de Ramires', 'Eça de Queiroz', 0, 5);

INSERT INTO Request VALUES(5, 'O Homem Duplicado', 'José Saramago', 0, 2);

INSERT INTO Request VALUES(6, 'Ensaio sobre a Cegueira', 'José Saramago', 0, 2);

INSERT INTO Request VALUES(7, 'A Casa Grande de Romarigães', 'Aquilino Ribeiro', 0, 3);

INSERT INTO Sharing VALUES('2018/04/13', '2018/04/13', 1, 1);
INSERT INTO Sharing VALUES('2018/04/13', '2018/04/13', 8, 3);
INSERT INTO Sharing VALUES('2018/04/14', '2018/04/15', 8, 3);
INSERT INTO Sharing VALUES('2018/04/13', '2018/04/13', 9, 4);
INSERT INTO Sharing VALUES('2018/04/14', '2018/04/14', 9, 5);
INSERT INTO Sharing VALUES('2018/04/15', '2018/04/15', 9, 6);
