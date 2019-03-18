substitutions
substitutionMustacheAt: key put:  value
	^self substitutionAt: (self asMustacheKey: key) put:  value