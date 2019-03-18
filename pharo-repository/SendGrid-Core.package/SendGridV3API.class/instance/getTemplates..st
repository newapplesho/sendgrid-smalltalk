actions-templates
getTemplates: params
	^self httpGet: 'templates' params: params