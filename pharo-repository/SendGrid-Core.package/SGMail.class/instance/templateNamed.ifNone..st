templates
templateNamed: templateName ifNone: aBlock
	^ self allDynamicTemplates detect: [ :each | each name = templateName ] ifNone: aBlock