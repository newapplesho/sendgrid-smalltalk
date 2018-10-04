accessing
replyToEntry: anEntry
	^ self jsonObject at: #reply_to put: anEntry