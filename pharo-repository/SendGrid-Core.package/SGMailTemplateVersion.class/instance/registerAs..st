actions
registerAs: newVersionName
	self name: newVersionName.
	^ self api
		createNewVersionOfTemplateAt: self templateId
		name: self name
		subject: self subject
		active: true
		text: self textContent
		html: self htmlContent