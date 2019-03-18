actions
activeVersion
	^self versions detect: [ :each | each isActive ]