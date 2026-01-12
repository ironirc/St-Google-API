generated
get: fileId options: optionsDict
	"
		 Gets a file's metadata or content by ID. For more information, see [Search for files and folders](/workspace/drive/api/guides/search-files). If you provide the URL parameter `alt=media`, then the response includes the file contents in the response body. Downloading content with `alt=media` only works if the file is stored in Drive. To download Google Docs, Sheets, and Slides use [`files.export`](/workspace/drive/api/reference/rest/v3/files/export) instead. For more information, see [Download and export files](/workspace/drive/api/guides/manage-downloads).

		Parameters, * = required, optional parameters in optionsDict

		acknowledgeAbuse (Boolean): Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the `alt` parameter is set to `media` and the user is the owner of the file or an organizer of the shared drive in which the file resides.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
		fileId (String*): The ID of the file.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.