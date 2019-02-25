actions-templates
getDynamicTemplates
	| params |
	params := { 'generations'-> 'dynamic'} asDictionary.
	^self getTemplates: params