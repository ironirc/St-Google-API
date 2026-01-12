generated
create: fileId 
	"
		Creates a comment on a file. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.