generated
update: commentId fileId: fileId 
	"
		Updates a comment with patch semantics. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

		Parameters, * = required, optional parameters in optionsDict

		commentId (String*): The ID of the comment.
		fileId (String*): The ID of the file.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments/{commentId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.