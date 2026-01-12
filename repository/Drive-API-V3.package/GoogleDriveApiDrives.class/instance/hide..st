generated
hide: driveId 
	"
		Hides a shared drive from the default view. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

		Parameters, * = required, optional parameters in optionsDict

		driveId (String*): The ID of the shared drive.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'drives/{driveId}/hide' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.