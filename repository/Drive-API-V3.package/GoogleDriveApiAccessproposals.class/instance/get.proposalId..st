generated
get: fileId proposalId: proposalId 
	"
		Retrieves an access proposal by ID. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): Required. The ID of the item the request is on.
		proposalId (String*): Required. The ID of the access proposal to resolve.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/accessproposals/{proposalId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.