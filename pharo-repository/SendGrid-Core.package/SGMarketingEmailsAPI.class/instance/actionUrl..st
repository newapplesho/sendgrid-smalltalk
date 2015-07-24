actions
actionUrl: actionString
	^ self url
		addPathSegment: actionString, '.', self format.