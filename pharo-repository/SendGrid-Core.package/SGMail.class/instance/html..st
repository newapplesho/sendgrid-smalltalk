accessing
html: textbody
	| messageBody |
	messageBody := textbody ifNil:[ '' ].
	entity addPart: (ZnMimePart fieldName: 'html' value: textbody)