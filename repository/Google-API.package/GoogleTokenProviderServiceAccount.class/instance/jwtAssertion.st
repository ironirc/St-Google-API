authentication
jwtAssertion
	| creds claims jwt now iat exp scopeString |
	creds := self serviceAccountCredentials.
	now := (DateAndTime now - DateAndTime unixEpoch) asSeconds asInteger.
	iat := now.
	exp := now + 3600.
	scopeString := (self scopes joinUsing: ' ').
	claims := JWTClaimsSet new
		iss: (creds at: 'client_email');
		aud: 'https://oauth2.googleapis.com/token';
		exp: exp;
		iat: iat;
		yourself.
	claims at: 'scope' put: scopeString.
	jwt := JsonWebSignature new
		algorithmName: 'RS256';
		payload: claims;
		key: (creds at: 'private_key');
		yourself.
	^ jwt compactSerialized