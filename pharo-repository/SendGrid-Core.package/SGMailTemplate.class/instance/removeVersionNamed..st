actions-version
removeVersionNamed: versionName
	| detectedVersion |
	detectedVersion := self findVersionNamed: versionName.
	detectedVersion ifNil: [ ^false ].
	detectedVersion delete.
	self versions: (self versions
		reject: [ :each | each name = versionName]).
	^true
	