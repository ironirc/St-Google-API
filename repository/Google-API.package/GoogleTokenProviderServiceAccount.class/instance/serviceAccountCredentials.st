credentials
serviceAccountCredentials
	| file |
	file := self configFile.
	file exists ifFalse: [ self error: 'Service Account credentials file (', file fullName, ') missing.' ].
	^ NeoJSONReader fromString: file contents