templates
getAllDynamicTemplates
	| loadedTemplates |
	loadedTemplates := self api getDynamicTemplates at: 'templates' ifAbsent: [ #() ].
	^ loadedTemplates collect: [ :eachDict |
		SGMailTemplate id: (eachDict at: 'id') name: (eachDict at: 'name') generation: (eachDict at: 'generation') versionDicts: (eachDict at: 'versions')
	 ]