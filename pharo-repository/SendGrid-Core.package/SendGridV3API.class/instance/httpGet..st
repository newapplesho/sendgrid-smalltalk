http-method
httpGet: aString
	| urlObject response |
	urlObject := self getUrlFrom: aString.
	response := self defaultClient get: urlObject.
	^self parseResponse: response.