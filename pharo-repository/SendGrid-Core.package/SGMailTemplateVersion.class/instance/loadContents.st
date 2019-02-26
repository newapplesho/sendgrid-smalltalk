actions
loadContents
	| dict |
	dict := self api getTemplateAt: self templateId  versionAt: self id.
	self textContent: (dict at: 'plain_content').
	self htmlContent: (dict at: 'html_content').