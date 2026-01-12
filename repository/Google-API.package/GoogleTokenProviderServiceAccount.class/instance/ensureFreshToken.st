token
ensureFreshToken
	(accessToken isNil or: [ self isExpired ]) ifTrue: [ self authenticate ].
	^ accessToken