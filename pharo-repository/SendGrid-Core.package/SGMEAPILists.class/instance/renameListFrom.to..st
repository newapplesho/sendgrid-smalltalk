convenience
renameListFrom: listNameString to: newlistNameString
	self list: listNameString.
	self newlist: newlistNameString.
	^ self edit.