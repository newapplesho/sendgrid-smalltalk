actions
value
	| responseJson exception |
	responseJson := Json readFrom: self response contents readStream.
	
	self response isSuccess 
		ifTrue:[^ responseJson ].
		
 	exception := SendGridException new.
	exception properties: responseJson.
	exception messageText: responseJson errors first asString .
	exception signal.