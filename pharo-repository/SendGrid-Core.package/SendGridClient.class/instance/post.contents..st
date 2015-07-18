http-method
post: aUrl contents: entity
	| request |
	request := ZnRequest empty.
	request method: #POST.
	request url: aUrl.
	request entity: entity.
	client := self defaultClient new.
	client request: request.
	^ client execute.