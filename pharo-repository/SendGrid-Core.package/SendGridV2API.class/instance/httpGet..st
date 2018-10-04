http-method
httpGet: aString
	| urlObject response |
	urlObject := self actionUrl: aString.
	entity parts do:[:v | urlObject queryAt: v fieldName add: v contents  ].

	response := self defaultClient get: urlObject.
	^ results := self parseResponse: response.