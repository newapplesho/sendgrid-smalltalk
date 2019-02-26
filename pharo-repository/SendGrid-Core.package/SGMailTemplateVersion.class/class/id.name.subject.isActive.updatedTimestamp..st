instance creation
id: id name: aName subject: subject isActive: isActive updatedTimestamp: timestampString
	^ self new
		id: id;
		name: aName;
		subject: subject;
		isActive: isActive;
		updatedTimestamp: timestampString;
		yourself