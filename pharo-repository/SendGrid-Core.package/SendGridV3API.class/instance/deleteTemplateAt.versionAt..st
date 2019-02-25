actions-templates
deleteTemplateAt: templateId versionAt: versionId
	| path |
	path := 'templates/{1}/versions/{2}' format: {templateId. versionId}.
	^ self httpDelete: path