http-method
patch: aUrl entity: entity
	| request |
	request := self newRequest: #PATCH url: aUrl.
	request entity: entity.
	^self sendRequest: request