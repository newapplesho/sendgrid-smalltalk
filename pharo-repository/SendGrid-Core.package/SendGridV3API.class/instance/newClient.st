factory
newClient
	| cli |
	cli := SendGridClient bearerToken: self apiKey.
	cli timeout: SGSettings default requestTimeoutSeconds.
	^cli