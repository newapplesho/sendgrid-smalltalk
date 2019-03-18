templates
templateNamed: templateName
	^ self allDynamicTemplates detect: [ :each | each name = templateName ]