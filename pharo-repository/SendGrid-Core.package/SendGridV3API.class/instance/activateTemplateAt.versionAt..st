actions-templates
activateTemplateAt: templateId versionAt: versionId
	| path |
	path := 'templates/{1}/versions/{2}/activate' format: {templateId. versionId}.
	^ self httpPost: path json: nil asNeoJsonString