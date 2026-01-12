auth with service account
serviceAccountCredentialsFile

	"| dir fn |
	dir := FileSystem workingDirectory.
	fn := (GoogleApiTools replaceInvalidPathChars: self apiName) , '.'
	      , self id , '.service_account.json'.
	fn := dir / 'google_api_data' / fn.
	^ fn fullName"
^ 	'C:\Users\ivoro\.pharo\syntrogy-google-service-account-credentials.json' asFileReference 