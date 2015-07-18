http-method
httpPost: url contents: entityObject
	| response |
	response := self defaultClient post: url contents: entityObject.
	^ results := self parseResponse: response.