substitutions
substitutionMustacheAt: key putSectionMustache:  value
	^self substitutionAt: (self asMustacheKey: key) put:  (self asMustacheKey: value)