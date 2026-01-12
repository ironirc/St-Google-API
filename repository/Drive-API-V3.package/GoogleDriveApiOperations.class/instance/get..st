generated
get: name 
	"
		Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

		Parameters, * = required, optional parameters in optionsDict

		name (String*): The name of the operation resource.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'operations/{name}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.