authentication
interactiveAuthorize
	| url code params |
	url := oauth2Session authenticationUrl.
	code := GoogleApiAuthDialog open: url asString.
	code ifNil: [ self error: 'Authentication cancelled' ].
	params := Dictionary new.
	params at: 'code' put: code.
	oauth2Session handleAuthenticationCallback: params