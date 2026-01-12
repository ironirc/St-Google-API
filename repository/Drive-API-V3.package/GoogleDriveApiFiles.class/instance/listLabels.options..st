generated
listLabels: fileId options: optionsDict
	"
		Lists the labels on a file. For more information, see [List labels on a file](https://developers.google.com/workspace/drive/api/guides/list-labels).

		Parameters, * = required, optional parameters in optionsDict

		maxResults (Integer): The maximum number of labels to return per page. When not set, defaults to 100.
		fileId (String*): The ID for the file.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from the previous response.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/listLabels' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.