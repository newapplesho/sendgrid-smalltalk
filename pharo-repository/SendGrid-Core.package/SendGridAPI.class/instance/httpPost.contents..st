http-method
httpPost: url contents: entityObject
	| response |
	response := self defaultClient post: url entity: entityObject.
	^ results := self parseResponse: response.