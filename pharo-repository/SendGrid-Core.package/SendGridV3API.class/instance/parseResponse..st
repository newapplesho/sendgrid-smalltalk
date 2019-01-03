private
parseResponse: response
	response isError ifTrue: [ ^ (SGResponseError response: response) signal] .

	^ (self defaultResponseClass on: response) value.