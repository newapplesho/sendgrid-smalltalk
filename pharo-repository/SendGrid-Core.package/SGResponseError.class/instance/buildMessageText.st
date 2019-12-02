private
buildMessageText
	self response ifNil: [ ^ '' ].
	^ String
		streamContents: [ :strm | 
			strm nextPutAll: self response printString.
			strm nextPutAll: ' - '.
			self errors
				ifNotEmpty: [ strm nextPutAll: 'errors: '.
					errors do: [ :each | self printError: each on: strm ] separatedBy: [ strm cr ] ] ]