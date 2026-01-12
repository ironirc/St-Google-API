generated
getStartPageToken: optionsDict
	"
		Gets the starting pageToken for listing future changes. For more information, see [Retrieve changes](https://developers.google.com/workspace/drive/api/guides/manage-changes).

		Parameters, * = required, optional parameters in optionsDict

		driveId (String): The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive will be returned.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		teamDriveId (String): Deprecated: Use `driveId` instead.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'changes/startPageToken' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.