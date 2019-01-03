http-method
httpPost: aString
	^ results := self httpPost: ( self actionUrl: aString ) contents: entity.