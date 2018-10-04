http-method
httpPost: url contents: entityObject
	| response |
	response := self newClient post: url json: entityObject.
	^ self parseResponse: response.