CREATE TRIGGER insertSharing
AFTER INSERT ON Message
WHEN New.body LIKE '[Share][Complete]'
BEGIN

	SELECT CASE WHEN (select owner from BookItem where id = New.context and owner = New.sender) is NULL
	THEN RAISE (ABORT, 'Permission error: You do not own the book')
	END;

	UPDATE Sharing
	SET endDate = New.date
	WHERE endDate is NULL and book = New.context and receiver = New.sender;

	INSERT INTO Sharing VALUES(New.date, NULL, New.context, New.receiver, New.sender);
END;
