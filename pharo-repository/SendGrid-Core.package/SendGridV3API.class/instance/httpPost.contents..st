http-method
httpPost: url contents: entityObject
	| response |
	response := self defaultClient post: url json: entityObject.
	^ self parseResponse: response.