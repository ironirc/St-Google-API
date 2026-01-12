generated
update: permissionId fileId: fileId options: optionsDict
	"
		Updates a permission with patch semantics. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

		Parameters, * = required, optional parameters in optionsDict

		permissionId (String*): The ID of the permission.
		transferOwnership (Boolean): Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. For more information, see [Transfer file ownership](https://developers.google.com//workspace/drive/api/guides/transfer-file).
		removeExpiration (Boolean): Whether to remove the expiration date.
		useDomainAdminAccess (Boolean): Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, the requester is granted access: 1. The file ID parameter refers to a shared drive. 2. The requester is an administrator of the domain to which the shared drive belongs. For more information, see [Manage shared drives as domain administrators](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives#manage-administrators).
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		fileId (String*): The ID of the file or shared drive.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		enforceExpansiveAccess (Boolean): Whether the request should enforce expansive access rules.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/permissions/{permissionId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.