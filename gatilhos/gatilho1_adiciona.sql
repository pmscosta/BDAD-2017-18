CREATE TRIGGER validateSharing
AFTER INSERT ON sharing
BEGIN
	UPDATE sharing
	Set sender = (select owner from BookItem where BookItem.id = New.book)
	WHERE startDate = New.startDate and book = New.book and receiver = New.Receiver;

	UPDATE bookItem
	Set owner = New.receiver
	WHERE id = New.book;

	UPDATE bookItem
	Set numShares = numShares + 1
	WHERE id = New.book;

END;
