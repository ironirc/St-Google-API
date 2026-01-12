generated
export: fileId mimeType: mimeType 
	"
		Exports a Google Workspace document to the requested MIME type and returns exported byte content. For more information, see [Download and export files](https://developers.google.com/workspace/drive/api/guides/manage-downloads). Note that the exported content is limited to 10 MB.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		mimeType (String*): Required. The MIME type of the format requested for this export. For a list of supported MIME types, see [Export MIME types for Google Workspace documents](/workspace/drive/api/guides/ref-export-formats).
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/export' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.