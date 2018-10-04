private
newRequest: method url: aUrl
	| request |
	request := ZnRequest empty.
	request method: method.
	request url: aUrl.
	self bearerToken ifNotNil: [ :token |
		request setAuthorization: 'Bearer ', token
	 ].
	^request