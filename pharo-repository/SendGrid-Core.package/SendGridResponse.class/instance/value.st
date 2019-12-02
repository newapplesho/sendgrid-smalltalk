actions
value
	| conts responseJson exception errorString |
	
	conts := self response contents.
	conts ifNotNil: [ responseJson := NeoJSONReader fromString: conts ].
	self response isSuccess 
		ifTrue:[^ responseJson ].
		
 	exception := SendGridException new.
	exception properties: responseJson.
	errorString := responseJson at: 'errors' ifAbsent: [ { responseJson at: 'error' ifAbsent: [  ] } ].
	exception messageText: errorString asString .
	exception signal.