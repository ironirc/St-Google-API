generated
list: fileId options: optionsDict
	"
		List the access proposals on a file. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access). Note: Only approvers are able to list access proposals on a file. If the user isn't an approver, a 403 error is returned.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): Required. The ID of the item the request is on.
		pageSize (Integer): Optional. The number of results per page.
		pageToken (String): Optional. The continuation token on the list of access requests.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/accessproposals' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.