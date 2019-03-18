actions-templates
updateTemplateAt: templateId versionAt: versionId name: versionName subject: subject active: activeOrNot text: textContent html: htmlContent
	| jsonData |
	jsonData := { 
		'name' -> versionName.
		'subject' -> subject.
		'active' -> (activeOrNot ifTrue: [1] ifFalse: [0]).
		'plain_content' -> textContent.
		'html_content' -> htmlContent.
	} asDictionary.
	^ self updateTemplateAt: templateId versionAt: versionId data: jsonData