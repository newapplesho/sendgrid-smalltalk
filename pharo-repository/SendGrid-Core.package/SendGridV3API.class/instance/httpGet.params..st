http-method
httpGet: aString params: params
	| urlObject response |
	urlObject := self newUrlFrom: aString.
	params keysAndValuesDo: [:k :v |
		urlObject queryAt: k put: v
	].
	response := self newClient get: urlObject.
	^self parseResponse: response.