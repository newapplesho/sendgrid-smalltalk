instance creation
filename: filename content: aStringOrByteArray
	| base64 |
	base64 := ZnBase64Encoder new encode: aStringOrByteArray.
	^ self filename: filename rawContent: base64