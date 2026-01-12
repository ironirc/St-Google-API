generated
update: fileId options: optionsDict
	"
		 Updates a file's metadata, content, or both. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might be changed automatically, such as `modifiedDate`. This method supports patch semantics. This method supports an */upload* URI and accepts uploaded media with the following characteristics: - *Maximum file size:* 5,120 GB - *Accepted Media MIME types:* `*/*` (Specify a valid MIME type, rather than the literal `*/*` value. The literal `*/*` is only used to indicate that any valid MIME type can be uploaded. For more information, see [Google Workspace and Google Drive supported MIME types](/workspace/drive/api/guides/mime-types).) For more information on uploading files, see [Upload file data](/workspace/drive/api/guides/manage-uploads).

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file.
		keepRevisionForever (Boolean): Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
		enforceSingleParent (Boolean): Deprecated: Adding files to multiple folders is no longer supported. Use shortcuts instead.
		removeParents (String): A comma-separated list of parent IDs to remove.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
		useContentAsIndexableText (Boolean): Whether to use the uploaded content as indexable text.
		ocrLanguage (String): A language hint for OCR processing during image import (ISO 639-1 code).
		addParents (String): A comma-separated list of parent IDs to add.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/drive/v3/files/{fileId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.