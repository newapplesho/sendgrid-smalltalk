accessing
text: textbody
	| messageBody |
	messageBody := textbody ifNil:['']. 
	entity addPart: (ZnMimePart fieldName: 'text' value: messageBody)