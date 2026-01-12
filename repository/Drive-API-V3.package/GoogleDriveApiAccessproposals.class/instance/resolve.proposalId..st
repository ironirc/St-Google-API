generated
resolve: fileId proposalId: proposalId 
	"
		Approves or denies an access proposal. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): Required. The ID of the item the request is on.
		proposalId (String*): Required. The ID of the access proposal to resolve.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/accessproposals/{proposalId}:resolve' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.