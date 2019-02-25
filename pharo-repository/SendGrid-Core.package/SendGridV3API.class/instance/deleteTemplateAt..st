actions-templates
deleteTemplateAt: templateId
	| path |
	path := 'templates/{1}' format: {templateId}.
	^ self httpDelete: path