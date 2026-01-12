generated
delete: fileId revisionId: revisionId 
	"
		Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted. For more information, see [Manage file revisions](https://developers.google.com/drive/api/guides/manage-revisions).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		revisionId (String*): The ID of the revision.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/revisions/{revisionId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.