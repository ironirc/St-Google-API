token
isExpired
	expiresAt ifNil: [ ^ true ].
	^ expiresAt <= DateAndTime now