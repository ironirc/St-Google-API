generated
copy: fileId options: optionsDict
	"
		Creates a copy of a file and applies any requested updates with patch semantics. For more information, see [Create and manage files](https://developers.google.com/workspace/drive/api/guides/create-file).

		Parameters, * = required, optional parameters in optionsDict

		enforceSingleParent (Boolean): Deprecated: Copying files into multiple folders is no longer supported. Use shortcuts instead.
		keepRevisionForever (Boolean): Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
		ocrLanguage (String): A language hint for OCR processing during image import (ISO 639-1 code).
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		fileId (String*): The ID of the file.
		ignoreDefaultVisibility (Boolean): Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/copy' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.