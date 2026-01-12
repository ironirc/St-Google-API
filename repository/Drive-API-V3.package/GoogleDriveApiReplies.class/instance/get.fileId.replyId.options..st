generated
get: commentId fileId: fileId replyId: replyId options: optionsDict
	"
		Gets a reply by ID. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

		Parameters, * = required, optional parameters in optionsDict

		commentId (String*): The ID of the comment.
		fileId (String*): The ID of the file.
		includeDeleted (Boolean): Whether to return deleted replies. Deleted replies don't include their original content.
		replyId (String*): The ID of the reply.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments/{commentId}/replies/{replyId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.