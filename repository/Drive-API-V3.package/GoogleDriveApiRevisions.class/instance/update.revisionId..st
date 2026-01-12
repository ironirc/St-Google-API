generated
update: fileId revisionId: revisionId 
	"
		Updates a revision with patch semantics. For more information, see [Manage file revisions](https://developers.google.com/workspace/drive/api/guides/manage-revisions).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		revisionId (String*): The ID of the revision.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/revisions/{revisionId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.