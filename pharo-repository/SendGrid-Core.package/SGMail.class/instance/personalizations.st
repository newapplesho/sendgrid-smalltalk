accessing
personalizations
	^ self jsonObject at: #personalizations ifAbsentPut: [ OrderedCollection new ]