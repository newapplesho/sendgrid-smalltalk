instance creation
id: id name: templateName generation: generation versions: versions
	^ self new
		id: id;
		name: templateName;
		generation: generation;
		versions: versions;
		yourself