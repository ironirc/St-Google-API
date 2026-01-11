auth with service account
serviceAccountCredentials

	| file credsJson |
	file := self serviceAccountCredentialsFile asFileReference.
	file exists ifFalse: [
			self error:
				'Service Account credentials file (' , file fullName
				, ') missing.' ].
	credsJson := NeoJSONReader fromString: file contents.
	^ credsJson