private
prepareMessageText
	| txt |
	txt := self buildMessageText.
	messageText := txt.
	^messageText
	