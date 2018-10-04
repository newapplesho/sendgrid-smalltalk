http-method
get: aUrl
	| request |
	request := request := self newRequest: #POST url: aUrl.
	^self sendRequest: request