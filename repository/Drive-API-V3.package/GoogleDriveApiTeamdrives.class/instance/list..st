generated
list: optionsDict
	"
		Deprecated: Use `drives.list` instead.

		Parameters, * = required, optional parameters in optionsDict

		useDomainAdminAccess (Boolean): Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requester is an administrator are returned.
		pageSize (Integer): Maximum number of Team Drives to return.
		pageToken (String): Page token for Team Drives.
		q (String): Query string for searching Team Drives.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'teamdrives' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.