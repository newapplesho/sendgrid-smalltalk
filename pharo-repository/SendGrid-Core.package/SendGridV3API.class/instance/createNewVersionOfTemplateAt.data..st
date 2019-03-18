actions-templates
createNewVersionOfTemplateAt: templateId data: jsonData
	| path |
	path := 'templates/{1}/versions' format: {templateId}.
	jsonData at: 'template_id' put: templateId.
	^ self httpPost: path json: jsonData asNeoJsonString