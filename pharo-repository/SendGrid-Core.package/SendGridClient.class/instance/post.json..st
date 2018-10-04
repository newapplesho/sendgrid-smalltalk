http-method
post: aUrl json: jsonString
	| jsonEntity |
	jsonEntity := ZnStringEntity type: ZnMimeType applicationJson.
	jsonEntity string: jsonString.
	^self post: aUrl entity: jsonEntity