auth with service account
getAccessTokenFromGoogle: jwtAssertion

	| client req response tokenResponse |
	client := ZnClient new.
	req := (ZnRequest post: 'https://oauth2.googleapis.com/token' asUrl)
		       entity: (ZnApplicationFormUrlEncodedEntity new
				        at: 'grant_type'
				        put: 'urn:ietf:params:oauth:grant-type:jwt-bearer';
				        at: 'assertion' put: jwtAssertion;
				        yourself);
		       yourself.
	response := [
		            client
			            request: req;
			            post ] ensure: [ client close ].
	tokenResponse := NeoJSONReader fromString: response.
	(tokenResponse at: 'error' ifAbsent: [ nil ]) ifNotNil: [ :error |
			Error new
				tag: tokenResponse;
				signal: 'Failed to get access token: '
					, (tokenResponse at: 'error_description' ifAbsent: [ error ]) ].
	^ tokenResponse