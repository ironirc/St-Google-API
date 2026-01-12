generated
delete: teamDriveId 
	"
		Deprecated: Use `drives.delete` instead.

		Parameters, * = required, optional parameters in optionsDict

		teamDriveId (String*): The ID of the Team Drive
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'teamdrives/{teamDriveId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.