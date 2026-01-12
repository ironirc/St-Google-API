accessing
configFile

	configFile ifNil: [ self error: 'configFile is required' ].
	^ configFile asFileReference