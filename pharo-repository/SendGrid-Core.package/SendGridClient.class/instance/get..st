http-method
get: aUrl
	| request |
	request := self newRequest: #GET url: aUrl.
	^self sendRequest: request