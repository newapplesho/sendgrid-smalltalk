private
prepareMessageText
	| txt |
	txt := self response ifNil: [''] ifNotNil: [:r | r printString].
	messageText := txt.
	^messageText
	