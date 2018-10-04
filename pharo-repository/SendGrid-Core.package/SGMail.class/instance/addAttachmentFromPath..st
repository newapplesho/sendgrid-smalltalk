attachments
addAttachmentFromPath: pathString
	| fileRef |
	fileRef := pathString asFileReference.
	fileRef binaryReadStreamDo: [:strm |
		self addAttachmentNamed: fileRef basename contents: strm contents	
	].
	