accessing
attachments
	^ self jsonObject at: #attachments ifAbsentPut: [ OrderedCollection new ]