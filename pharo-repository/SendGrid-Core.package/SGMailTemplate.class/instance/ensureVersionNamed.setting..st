actions-version
ensureVersionNamed: versionName setting: settingBlock
	| detedtedVersion |
	detedtedVersion := self findVersionNamed: versionName.
	detedtedVersion ifNil: [  
		^ self addVersionNamed: versionName setting: settingBlock
	].
	settingBlock value: detedtedVersion.
	^ detedtedVersion update