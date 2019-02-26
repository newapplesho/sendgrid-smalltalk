templates
allDynamicTemplates
	templates ifNil: [ templates := self getAllDynamicTemplates ].
	^ templates