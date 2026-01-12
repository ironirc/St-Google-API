generated
list: fileId options: optionsDict
	"
		Lists the Approvals on a file.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): Required. The ID of the file the Approval is on.
		pageSize (Integer): The maximum number of Approvals to return. When not set, at most 100 Approvals will be returned.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of nextPageToken from a previous response.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/approvals' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.