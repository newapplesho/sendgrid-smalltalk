accessing
requestTimeoutSeconds
	^ self at:#requestTimeoutSeconds ifAbsent:[ 60 ].