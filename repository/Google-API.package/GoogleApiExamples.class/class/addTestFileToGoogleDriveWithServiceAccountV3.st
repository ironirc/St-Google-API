as yet unclassified
addTestFileToGoogleDriveWithServiceAccountV3

	| fileApi fileName localFilePath remoteFile now result |
	" add a simple text file to Google Drive using Service Account Authentication "" see https://developers.google.com/drive/v2/reference/files/insert "" create and authenticate API "
	fileApi := GoogleDriveApiFiles new.
	fileApi authenticateServiceAccount.

	" create a local file "
	now := DateAndTime now.
	fileName := ('{1}{2}{3}-{4}{5}{6}' format: {
			             now year.
			             now month asTwoCharacterString.
			             now dayOfMonth asTwoCharacterString.
			             now hours asTwoCharacterString.
			             now minutes asTwoCharacterString.
			             now seconds asTwoCharacterString }) , '.txt'.

	localFilePath := (FileSystem workingDirectory
	                  / 'google_api_data_tests') ensureCreateDirectory
	                 / fileName.
	localFilePath writeStreamDo: [ :stream |
			stream nextPutAll:
				'I am a test file created by Pharo smalltalk using Service Account Authentication named ('
				, fileName , ')' ].

	" define remote file parameters "
	remoteFile := Dictionary new.
	remoteFile
		add: 'title' -> fileName;
		add: 'description'
			->
				'A file created with Pharo SmallTalk using Service Account Authentication';
		add: 'mimeType' -> 'text/plain';
		add: 'CONTENT' -> localFilePath contents.

	" send request "
	[ result := fileApi insert: remoteFile ]
		on: Error
		do: [ :ex |
				ex inspect.
				self halt ].

	" after transfer delete local file "
	localFilePath delete.

	^ result