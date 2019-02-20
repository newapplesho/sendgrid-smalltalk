factory
newDefaultJsonObject
	^Dictionary new
		at: #from put: (SGAddressEntry new);
		at: #personalizations put: (OrderedCollection with: SGMailPersonalization new);
		at: #content put: (OrderedCollection with: SGMailContent new);
		yourself