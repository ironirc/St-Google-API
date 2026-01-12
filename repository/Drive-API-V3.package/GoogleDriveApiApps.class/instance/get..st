generated
get: appId 
	"
		Gets a specific app. For more information, see [Return user info](https://developers.google.com/workspace/drive/api/guides/user-info).

		Parameters, * = required, optional parameters in optionsDict

		appId (String*): The ID of the app.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'apps/{appId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.