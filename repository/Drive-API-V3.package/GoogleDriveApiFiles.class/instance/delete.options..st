generated
delete: fileId options: optionsDict
	"
		Permanently deletes a file owned by the user without moving it to the trash. For more information, see [Trash or delete files and folders](https://developers.google.com/workspace/drive/api/guides/delete). If the file belongs to a shared drive, the user must be an `organizer` on the parent folder. If the target is a folder, all descendants owned by the user are also deleted.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		enforceSingleParent (Boolean): Deprecated: If an item isn't in a shared drive and its last parent is deleted but the item itself isn't, the item will be placed under its owner's root.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.