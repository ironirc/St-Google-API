auth with service account
authenticateServiceAccount

	| jwtAssertion tokenResponse |
	jwtAssertion := self generateJWTForServiceAccount.
	tokenResponse := self getAccessTokenFromGoogle: jwtAssertion.
	session := ZnGoogleOAuth2Session new.
	session accessToken: (tokenResponse at: 'access_token').
	self authenticate: tokenResponse.
	^ true