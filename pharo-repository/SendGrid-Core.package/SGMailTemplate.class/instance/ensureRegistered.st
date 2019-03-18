actions
ensureRegistered
	^SGMail default templateNamed: self name ifNone: [
		self register	
	]
	