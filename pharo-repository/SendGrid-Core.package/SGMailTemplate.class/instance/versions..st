accessing
versions: anObject
	versions := anObject.
	versions isCollection ifTrue: [ versions do: [ :each  | each template: self]]