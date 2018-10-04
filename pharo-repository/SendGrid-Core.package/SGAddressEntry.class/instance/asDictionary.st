converting
asDictionary
	| dict |
	dict := Dictionary new.
	dict at: 'email' put: self address.
	self name ifNotNil: [:nm | dict at: 'name' put: nm].
	^dict