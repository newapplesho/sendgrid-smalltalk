sections
sectionMustacheAt: sectionKey put: value
	self sectionAt: (self asMustacheKey: sectionKey) put: value