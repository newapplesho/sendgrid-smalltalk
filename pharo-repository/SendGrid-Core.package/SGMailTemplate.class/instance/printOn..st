printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	aStream nextPutAll: self id printString.
	aStream nextPut: $,.
	aStream nextPutAll: self name printString.
	aStream nextPut: $).
	