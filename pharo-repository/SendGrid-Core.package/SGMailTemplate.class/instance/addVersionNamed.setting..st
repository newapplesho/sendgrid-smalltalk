actions-version
addVersionNamed: versionName setting: settingBlock
	| newVersion |
	newVersion := self newVersionNamed: versionName.
	settingBlock value: newVersion.
	newVersion register.
	self versions
		detect: [ :each | each name = newVersion name ]
		ifNone: [ self versions add: newVersion ]