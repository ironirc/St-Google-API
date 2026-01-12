token
ensureFreshToken
	| s |
	s := self ensureSession.
	self loadAuthTokensIntoSessionIfPresent.
	s accessToken ifNil: [ self interactiveAuthorize ].
	accessToken := s liveAccessToken.
	tokenType := s tokenType.
	self persistAuthTokensFromSession.
	^ accessToken