generated
delete: permissionId fileId: fileId options: optionsDict
	"
		Deletes a permission. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

		Parameters, * = required, optional parameters in optionsDict

		useDomainAdminAccess (Boolean): Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, the requester is granted access: 1. The file ID parameter refers to a shared drive. 2. The requester is an administrator of the domain to which the shared drive belongs. For more information, see [Manage shared drives as domain administrators](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives#manage-administrators).
		permissionId (String*): The ID of the permission.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		fileId (String*): The ID of the file or shared drive.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		enforceExpansiveAccess (Boolean): Whether the request should enforce expansive access rules.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/permissions/{permissionId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.