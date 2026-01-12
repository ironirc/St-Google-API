generated
get: commentId fileId: fileId options: optionsDict
	"
		Gets a comment by ID. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

		Parameters, * = required, optional parameters in optionsDict

		commentId (String*): The ID of the comment.
		fileId (String*): The ID of the file.
		includeDeleted (Boolean): Whether to return deleted comments. Deleted comments will not include their original content.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments/{commentId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.