generated
emptyTrash: optionsDict
	"
		Permanently deletes all of the user's trashed files. For more information, see [Trash or delete files and folders](https://developers.google.com/workspace/drive/api/guides/delete).

		Parameters, * = required, optional parameters in optionsDict

		driveId (String): If set, empties the trash of the provided shared drive.
		enforceSingleParent (Boolean): Deprecated: If an item isn't in a shared drive and its last parent is deleted but the item itself isn't, the item will be placed under its owner's root.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/trash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.