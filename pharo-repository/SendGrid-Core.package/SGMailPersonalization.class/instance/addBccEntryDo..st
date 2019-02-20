adding
addBccEntryDo: entryBuildBlock
	^ entryBuildBlock value: (self addBccEntry: SGAddressEntry new)