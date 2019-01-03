private
sendRequest: aRequest
	| cli request |
	cli := self httpClient.
	cli request: aRequest.
	cli execute.
	^ cli response.