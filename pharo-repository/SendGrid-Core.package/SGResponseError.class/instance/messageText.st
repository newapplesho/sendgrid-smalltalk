accessing
messageText
	messageText ifNil: [ self prepareMessageText].
	^messageText
	