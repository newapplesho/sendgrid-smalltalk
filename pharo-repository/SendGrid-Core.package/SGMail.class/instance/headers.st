accessing
headers
	^ self jsonObject at: #headers ifAbsentPut: [ OrderedCollection new ]