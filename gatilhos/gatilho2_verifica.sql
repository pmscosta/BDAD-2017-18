PRAGMA foreign_keys=ON;

SELECT * FROM MESSAGE;

INSERT INTO MESSAGE (date, body, receiver, sender, context) VALUES ('2018/06/20 20:23:32', 'Hello, nice book you have!', 3, 4, 2);

SELECT * FROM MESSAGE; 

INSERT INTO MESSAGE (date, body, receiver, sender, context)  VALUES ('2018/07/14', 'Good Morning! How you doing?', 8, 2, 1);

SELECT * FROM MESSAGE;
