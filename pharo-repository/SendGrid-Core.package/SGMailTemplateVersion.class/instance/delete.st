actions
delete
	^ self api
		deleteTemplateAt: self templateId
		versionAt: self id