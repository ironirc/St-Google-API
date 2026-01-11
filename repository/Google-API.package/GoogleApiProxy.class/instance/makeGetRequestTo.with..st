api
makeGetRequestTo: aUrl with: aParamDictionary

	| url req cl response |
	url := aUrl asUrl.
	url queryAddAll: aParamDictionary.
	req := ZnRequest get: url.
	req setBearerAuthentication: session accessToken.
	cl := ZnClient new.
	response := cl
		            request: req;
		            get.
	^ NeoJSONReader fromString: response