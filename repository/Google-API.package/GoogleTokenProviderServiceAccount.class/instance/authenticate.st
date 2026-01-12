authentication
authenticate
	| tokenResponse expiresIn |
	tokenResponse := self requestTokenForJwtAssertion: self jwtAssertion.
	accessToken := tokenResponse at: 'access_token'.
	tokenType := tokenResponse at: 'token_type' ifAbsent: [ 'Bearer' ].
	expiresIn := tokenResponse at: 'expires_in' ifAbsent: [ nil ].
	expiresAt := expiresIn ifNil: [ nil ] ifNotNil: [ DateAndTime now + expiresIn asInteger seconds - 60 seconds ].
	^ accessToken