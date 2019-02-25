instance creation
forDynamicTemplate
	SGSettings default useV3 ifFalse: [ ^self error: 'Use V3'].
	^self new initPersonalizations ; initContent; yourself