convenience
datum: anArray
	anArray do:[:v |
		entity addPart: (ZnMimePart fieldName: 'data[]' value: v). ].