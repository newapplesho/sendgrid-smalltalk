private
parseResponse: response
	self format = 'json'
		ifTrue:[		^ (self defaultResponseClass on: response) value. ].