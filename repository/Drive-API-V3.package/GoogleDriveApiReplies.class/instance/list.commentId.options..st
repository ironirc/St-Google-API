generated
list: fileId commentId: commentId options: optionsDict
	"
		Lists a comment's replies. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

		Parameters, * = required, optional parameters in optionsDict

		pageSize (Integer): The maximum number of replies to return per page.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from the previous response.
		fileId (String*): The ID of the file.
		commentId (String*): The ID of the comment.
		includeDeleted (Boolean): Whether to include deleted replies. Deleted replies don't include their original content.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments/{commentId}/replies' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.