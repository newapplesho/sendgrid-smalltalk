accessing
to
	^ to ifNil: [ to := OrderedCollection with: SGAddressEntry new ]