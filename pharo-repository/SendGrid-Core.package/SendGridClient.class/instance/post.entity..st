http-method
post: aUrl entity: entity
	| request |
	request := self newRequest: #POST url: aUrl.
	request entity: entity.
	^self sendRequest: request