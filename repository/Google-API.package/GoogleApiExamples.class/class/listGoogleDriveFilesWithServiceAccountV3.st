as yet unclassified
listGoogleDriveFilesWithServiceAccountV3

	<script>
	| fileApi result items options files |
	" list files in Google Drive in the Transcript using Service Account Authentication "" see https://developers.google.com/drive/v2/reference/files/list ""	options at: 'includeItemsFromAllDrives' put: true."
	fileApi := GoogleDriveApiFiles new.
	fileApi authenticateServiceAccount.
	options := Dictionary new.
	options at: 'includeItemsFromAllDrives' put: 'true'.
	options at: 'supportsAllDrives' put: 'true'.
	"options at: 'driveId' put: 'blablabla'."
	options at: 'corpora' put: 'allDrives'.

	" send request "
	[ result := fileApi list: options ]
		on: Error
		do: [ :ex |
				ex inspect.
				self halt ].
	" display listing in transcript window "
	"self halt."
	items := result at: 'files' ifAbsent: [ Array new ].
	files := items collect: [ :item | GDriveFile on: item ].
	files do: [ :file |
			Transcript
				show: file name , ' ' , file id;
				cr ].
	"(fileApi download: files first id) inspect."
	^ result