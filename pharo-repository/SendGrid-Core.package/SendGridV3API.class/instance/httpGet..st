http-method
httpGet: aString
	| urlObject response |
	urlObject := self newUrlFrom: aString.
	response := self newClient get: urlObject.
	^self parseResponse: response.