printing
printError: errorDict on: aStream
	aStream nextPutAll: '('.
	errorDict keysAndValuesDo: [ :key :value |
		aStream nextPutAll: key asString.
		aStream nextPutAll: ' : '.
		aStream nextPutAll: value asString.
		aStream cr.
	].
	aStream nextPutAll: ')'.
	