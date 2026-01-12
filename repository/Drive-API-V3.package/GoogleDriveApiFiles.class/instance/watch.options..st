generated
watch: fileId options: optionsDict
	"
		Subscribes to changes to a file. For more information, see [Notifications for resource changes](https://developers.google.com/workspace/drive/api/guides/push).

		Parameters, * = required, optional parameters in optionsDict

		acknowledgeAbuse (Boolean): Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the `alt` parameter is set to `media` and the user is the owner of the file or an organizer of the shared drive in which the file resides.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
		fileId (String*): The ID of the file.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/watch' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.