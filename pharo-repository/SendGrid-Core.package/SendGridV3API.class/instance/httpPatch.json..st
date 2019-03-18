http-method
httpPatch: aString json: jsonString
	|  urlObject response |
	urlObject := self newUrlFrom: aString.
	response := self newClient patch: urlObject json: jsonString.
	^ self parseResponse: response.