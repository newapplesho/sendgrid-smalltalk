instance creation
apiUser: sendgridUsernameString apiKey: sendgridPasswordString
	^ self new 
		apiUser: sendgridUsernameString;
		apiKey: sendgridPasswordString;
		yourself.