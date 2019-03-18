accessing
versions: anObject
	anObject ifNil: [ ^ versions := nil].
	versions := anObject asOrderedCollection.
	versions do: [ :each  | each template: self]