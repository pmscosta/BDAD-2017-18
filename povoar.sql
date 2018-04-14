PRAGMA foreign_keys=ON;
.mode columns
.headers on
.nullvalue NULL

INSERT INTO Language VALUES(1, 'English');

INSERT INTO Publisher VALUES(1, 'Bloomsbury');

INSERT INTO Genre VALUES(1, 'Fantasy');

INSERT INTO Author VALUES(1, 'J. K. Rowling', '1965/07/31');

INSERT INTO Location VALUES(1, 4470111, 'Maia');

INSERT INTO User VALUES(1, 'Margarida Silva', 'Avenida Rosal', 1);

INSERT INTO Nationality VALUES(1, 'Portuguese');

INSERT INTO Nationality VALUES(2, 'British');

INSERT INTO UserNationality VALUES(1, 1);

INSERT INTO AuthorNationality VALUES(1, 2);

INSERT INTO Book VALUES(1, 9780747532743, 'Harry Potter and the Philosopher´s Stone', 1997, 1, 1, 1);

INSERT INTO BookItem VALUES(1, '2018/04/14', 1, 1);

INSERT INTO BookGenre VALUES(1, 1);

INSERT INTO BookAuthor VALUES(1, 1);