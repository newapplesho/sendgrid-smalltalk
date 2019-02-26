actions
sendByTemplateNamed: mailTemplateName
	| mailTemplate |
	mailTemplate := self templateNamed: mailTemplateName.
	^ self sendByTemplate: mailTemplate