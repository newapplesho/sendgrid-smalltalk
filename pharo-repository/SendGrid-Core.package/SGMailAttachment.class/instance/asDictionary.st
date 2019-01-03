converting
asDictionary
	| dict |
	dict := Dictionary new.
	self type ifNotNil: [:nm | dict at: 'type' put: nm].
	dict at: 'filename' put: self filename.
	dict at: 'content' put: self content.
	^dict