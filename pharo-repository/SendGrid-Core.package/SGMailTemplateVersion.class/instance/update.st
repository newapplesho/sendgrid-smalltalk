actions
update
	^ self api
		updateTemplateAt: self templateId
		versionAt: self id
		name: self name
		subject: self subject
		active: self isActive
		text: self textContent
		html: self htmlContent