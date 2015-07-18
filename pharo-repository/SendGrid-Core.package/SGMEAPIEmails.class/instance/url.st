accessing
url
	| uri |
	uri := self baseUrl.
	self defaultAPI do:[:v |
		uri addPathSegment: v ].
	^ uri