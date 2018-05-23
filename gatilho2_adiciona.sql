CREATE TRIGGER verifyMessage
BEFORE INSERT ON message
BEGIN
	SELECT RAISE (ABORT, 'The user you want to connect with is not the owner of the book')
	WHERE 
	 New.receiver <> (Select owner as X from BookItem where id = New.context) and New.sender <> 			(Select owner as X from BookItem where id = New.context);
END;
