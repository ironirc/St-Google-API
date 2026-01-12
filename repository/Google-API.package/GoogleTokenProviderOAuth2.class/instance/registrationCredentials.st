credentials
registrationCredentials
	| file cfg clientId clientSecret redirectUrl |
	file := self configFile.
	file exists ifFalse: [ self error: 'API registration credentials file (', file fullName, ') missing.' ].
	cfg := NeoJSONReader fromString: file contents.
	clientId := cfg at: 'client_id' ifAbsent: [ String empty ].
	clientSecret := cfg at: 'client_secret' ifAbsent: [ String empty ].
	redirectUrl := cfg at: 'redirect_uris' ifAbsent: [ #() ].
	redirectUrl := redirectUrl at: 1 ifAbsent: [ String empty ].
	^ ZnOAuth2ConsumerData
		key: clientId
		secret: clientSecret
		redirectUrl: redirectUrl