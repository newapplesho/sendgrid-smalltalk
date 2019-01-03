instance creation
filename: filename rawContent: aContent
	^ self new
		content: aContent;
		filename: filename;
		yourself