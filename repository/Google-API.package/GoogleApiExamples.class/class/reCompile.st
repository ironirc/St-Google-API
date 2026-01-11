as yet unclassified
reCompile

	self class compile:
		(self class methodDictionary at: #listGoogleDriveFilesdriveV2) ast
			source.
	self class compile:
		(self class methodDictionary at: #addTestFileToGoogleDriveV2) ast
			source