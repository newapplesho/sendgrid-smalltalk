actions-templates
updateTemplateAt: templateId versionAt: versionId data: jsonData
	| path |
	path := 'templates/{1}/versions/{2}' format: {templateId. versionId}.
	^ self httpPatch: path json: jsonData asNeoJsonString