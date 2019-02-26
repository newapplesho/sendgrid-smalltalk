actions
register
	| dict | 
	dict := self api
		createNewVersionOfTemplateAt: self templateId
		name: self name
		subject: self subject
		active: true
		text: self textContent
		html: self htmlContent.
	self id: (dict at: 'id')