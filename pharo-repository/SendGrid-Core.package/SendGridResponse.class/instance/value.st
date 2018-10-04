actions
value
	| conts responseJson exception |
	
	conts := self response contents.
	conts ifNotNil: [ responseJson := NeoJSONReader fromString: conts ].
	self response isSuccess 
		ifTrue:[^ responseJson ].
		
 	exception := SendGridException new.
	exception properties: responseJson.
	exception messageText: responseJson errors first asString .
	exception signal.