private
parseResponse: response
	^ (self defaultResponseClass on: response) value.