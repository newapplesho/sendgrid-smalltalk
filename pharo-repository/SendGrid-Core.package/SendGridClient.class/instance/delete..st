http-method
delete: aUrl
	| request |
	request := self newRequest: #DELETE url: aUrl.
	^self sendRequest: request