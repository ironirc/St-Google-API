as yet unclassified
listGoogleDriveFilesWithServiceAccount

	<script>
	| fileApi result items options |
	" list files in Google Drive in the Transcript using Service Account Authentication "" see https://developers.google.com/drive/v2/reference/files/list ""	options at: 'includeItemsFromAllDrives' put: true."
	fileApi := GoogleDriveApiFiles new.
	fileApi authenticateServiceAccount.
	options := Dictionary new.
	options at: 'includeItemsFromAllDrives' put: 'true'.
	options at: 'supportsAllDrives' put: 'true'.
	"options at: 'driveId' put: 'blablabla'."
	options at: 'corpora' put: 'allDrives'.
	"	
key=[YOUR_API_KEY]' \	
"
	" send request "
	[ result := fileApi list: options ]
		on: Error
		do: [ :ex |
				ex inspect.
				self halt ].
	" display listing in transcript window "

	items := result at: 'files' ifAbsent: [ Array new ].
	items do: [ :item |
			| fileName |
			fileName := item at: 'name' ifAbsent: [ 'unknown' ].


			Transcript
				show: fileName;
				cr ].

	^ result