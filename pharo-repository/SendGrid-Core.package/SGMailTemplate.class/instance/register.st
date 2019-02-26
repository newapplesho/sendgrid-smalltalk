actions
register
	| dict | 
	dict := self api
		createDynamicTemplate: self name.
	self id: (dict at: 'id')