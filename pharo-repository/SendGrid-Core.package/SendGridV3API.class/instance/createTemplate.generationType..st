actions-templates
createTemplate: templateName generationType: generationType
	| path jsonData |
	path := 'templates'.
	jsonData := { 
		'name' -> templateName.
		'generation' -> generationType
	} asDictionary.
	^ self httpPost: path json: jsonData asNeoJsonString