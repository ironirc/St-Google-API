generated
get: teamDriveId options: optionsDict
	"
		Deprecated: Use `drives.get` instead.

		Parameters, * = required, optional parameters in optionsDict

		teamDriveId (String*): The ID of the Team Drive
		useDomainAdminAccess (Boolean): Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'teamdrives/{teamDriveId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.