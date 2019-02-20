accessing
sections
	^ self jsonObject at: #sections ifAbsentPut: [ Dictionary new ]