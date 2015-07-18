private
parseResponse: responseString
	self format = 'json'
		ifTrue:[	^ Json readFrom: responseString readStream. ].