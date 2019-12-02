private
parseErrors
	| conts json |
	conts := self response contents.
	conts ifEmpty: [ ^ self ].
	json := NeoJSONReader fromString: conts.
	self errors: (json at: 'errors' ifAbsent: [#()]).