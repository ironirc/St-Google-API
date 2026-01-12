credentials
persistAuthTokensFromSession
	| file dict |
	file := self tokenCacheFile.
	file ifNil: [ ^ self ].
	file parent createDirectory.
	dict := Dictionary new.
	dict at: 'access_token' put: oauth2Session accessToken.
	oauth2Session refreshToken ifNotNil: [ :rt | dict at: 'refresh_token' put: rt ].
	dict at: 'token_type' put: oauth2Session tokenType.
	file writeStreamDo: [ :s | s nextPutAll: (NeoJSONWriter toString: dict) ]