actions-mail send
sendMail: aMail
	^ self httpPost: 'mail/send' json: aMail asNeoJsonString 