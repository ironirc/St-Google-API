generated
list: fileId options: optionsDict
	"
		Lists a file's comments. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

		Parameters, * = required, optional parameters in optionsDict

		pageSize (Integer): The maximum number of comments to return per page.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
		fileId (String*): The ID of the file.
		startModifiedTime (String): The minimum value of 'modifiedTime' for the result comments (RFC 3339 date-time).
		includeDeleted (Boolean): Whether to include deleted comments. Deleted comments will not include their original content.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/comments' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.