http-method
httpDelete: aString
	| urlObject response |
	urlObject := self newUrlFrom: aString.
	response := self newClient delete: urlObject.
	^self parseResponse: response.