instance creation
id: id name: templateName generation: generation versionDicts: versionDicts
	| versions |
	versions := versionDicts collect: [ :eachDict |
		SGMailTemplateVersion 
			id: (eachDict at: 'id')
			name: (eachDict at: 'name') subject: (eachDict at: 'subject') isActive: (eachDict at: 'active') = 1 updatedTimestamp: (eachDict at: 'updated_at')
	].
	^ self id: id name: templateName generation: generation versions: versions