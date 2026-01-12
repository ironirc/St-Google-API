private
ensureSession
	oauth2Session ifNotNil: [ ^ oauth2Session ].
	oauth2Session := ZnGoogleOAuth2Session google: self registrationCredentials.
	oauth2Session beOfflineAccessType.
	oauth2Session scopes: self scopes.
	^ oauth2Session