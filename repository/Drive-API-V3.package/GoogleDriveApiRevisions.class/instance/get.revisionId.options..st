generated
get: fileId revisionId: revisionId options: optionsDict
	"
		Gets a revision's metadata or content by ID. For more information, see [Manage file revisions](https://developers.google.com/workspace/drive/api/guides/manage-revisions).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		revisionId (String*): The ID of the revision.
		acknowledgeAbuse (Boolean): Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the `alt` parameter is set to `media` and the user is the owner of the file or an organizer of the shared drive in which the file resides.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/revisions/{revisionId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.