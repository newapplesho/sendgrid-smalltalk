converting
asDictionary
	| dict |
	dict := Dictionary new.
	dict at: 'to' put: self to.
	self subject ifNotNil: [:nm | dict at: 'subject' put: nm].
	self cc isEmpty ifFalse: [dict at: 'cc' put: self cc].
	self bcc isEmpty ifFalse: [dict at: 'bcc' put: self bcc].
	^dict