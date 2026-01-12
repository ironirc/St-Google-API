generated
create: requestId 
	"
		Deprecated: Use `drives.create` instead.

		Parameters, * = required, optional parameters in optionsDict

		requestId (String*): Required. An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'teamdrives' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.