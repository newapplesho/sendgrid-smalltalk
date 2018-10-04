http-method
post: aUrl json: jsonString
	| jsonEntity |
	jsonEntity := ZnStringEntity json: jsonString.
	^self post: aUrl entity: jsonEntity