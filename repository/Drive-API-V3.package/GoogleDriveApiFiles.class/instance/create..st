generated
create: optionsDict
	"
		 Creates a file. For more information, see [Create and manage files](/workspace/drive/api/guides/create-file). This method supports an */upload* URI and accepts uploaded media with the following characteristics: - *Maximum file size:* 5,120 GB - *Accepted Media MIME types:* `*/*` (Specify a valid MIME type, rather than the literal `*/*` value. The literal `*/*` is only used to indicate that any valid MIME type can be uploaded. For more information, see [Google Workspace and Google Drive supported MIME types](/workspace/drive/api/guides/mime-types).) For more information on uploading files, see [Upload file data](/workspace/drive/api/guides/manage-uploads). Apps creating shortcuts with the `create` method must specify the MIME type `application/vnd.google-apps.shortcut`. Apps should specify a file extension in the `name` property when inserting files with the API. For example, an operation to insert a JPEG file should specify something like `""name"": ""cat.jpg""` in the metadata. Subsequent `GET` requests include the read-only `fileExtension` property populated with the extension originally specified in the `name` property. When a Google Drive user requests to download a file, or when the file is downloaded through the sync client, Drive builds a full filename (with extension) based on the name. In cases where the extension is missing, Drive attempts to determine the extension based on the file's MIME type.

		Parameters, * = required, optional parameters in optionsDict

		enforceSingleParent (Boolean): Deprecated: Creating files in multiple folders is no longer supported.
		keepRevisionForever (Boolean): Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
		ocrLanguage (String): A language hint for OCR processing during image import (ISO 639-1 code).
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		ignoreDefaultVisibility (Boolean): Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		useContentAsIndexableText (Boolean): Whether to use the uploaded content as indexable text.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/drive/v3/files' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.