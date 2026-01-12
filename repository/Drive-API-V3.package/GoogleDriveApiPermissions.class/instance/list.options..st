generated
list: fileId options: optionsDict
	"
		Lists a file's or shared drive's permissions. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing).

		Parameters, * = required, optional parameters in optionsDict

		useDomainAdminAccess (Boolean): Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, the requester is granted access: 1. The file ID parameter refers to a shared drive. 2. The requester is an administrator of the domain to which the shared drive belongs. For more information, see [Manage shared drives as domain administrators](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives#manage-administrators).
		pageSize (Integer): The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results will be returned. When not set for files that are not in a shared drive, the entire list will be returned.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from the previous response.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		fileId (String*): The ID of the file or shared drive.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/permissions' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.