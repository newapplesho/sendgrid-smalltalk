converting
asDictionary
	| dict |
	dict := Dictionary new.
	dict at: 'type' put: self type.
	dict at: 'value' put: self value.
	^dict