accessing
httpClient
	^ httpClient ifNil: [ httpClient := self defaultHttpClientClass new ]