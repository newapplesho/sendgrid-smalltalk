accessing
baseUrl
	^ super baseUrl 
    	addPathSegment: 'api'; 
		addPathSegment:'newsletter';
 		yourself.