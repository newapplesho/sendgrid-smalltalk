accessing
headers: headersJson
	entity addPart: (ZnMimePart fieldName: 'cc[]' value: headersJson)