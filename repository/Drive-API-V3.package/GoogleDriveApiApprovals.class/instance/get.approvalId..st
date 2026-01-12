generated
get: fileId approvalId: approvalId 
	"
		Gets an Approval by ID.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): Required. The ID of the file the Approval is on.
		approvalId (String*): Required. The ID of the Approval.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/approvals/{approvalId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.