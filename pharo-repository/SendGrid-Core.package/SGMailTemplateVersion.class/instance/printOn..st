printing
printOn: aStream
	self isActive ifTrue: [ aStream nextPut: $* ].
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	aStream nextPutAll: self id printString.
	aStream nextPut: $,.
	aStream nextPutAll: self name printString.
	aStream nextPut: $).
	