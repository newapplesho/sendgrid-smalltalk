http-method
patch: aUrl json: jsonString
	| jsonEntity |
	jsonEntity := ZnStringEntity type: ZnMimeType applicationJson.
	jsonEntity string: jsonString.
	^self patch: aUrl entity: jsonEntity