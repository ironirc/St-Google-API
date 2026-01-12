generated
create: fileId options: optionsDict
	"
		Creates a permission for a file or shared drive. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file or shared drive.
		transferOwnership (Boolean): Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. For more information, see [Transfer file ownership](https://developers.google.com/workspace/drive/api/guides/transfer-file).
		enforceSingleParent (Boolean): Deprecated: See `moveToNewOwnersRoot` for details.
		moveToNewOwnersRoot (Boolean): This parameter only takes effect if the item isn't in a shared drive and the request is attempting to transfer the ownership of the item. If set to `true`, the item is moved to the new owner's My Drive root folder and all prior parents removed. If set to `false`, parents aren't changed.
		emailMessage (String): A plain text custom message to include in the notification email.
		sendNotificationEmail (Boolean): Whether to send a notification email when sharing to users or groups. This defaults to `true` for users and groups, and is not allowed for other requests. It must not be disabled for ownership transfers.
		useDomainAdminAccess (Boolean): Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, the requester is granted access: 1. The file ID parameter refers to a shared drive. 2. The requester is an administrator of the domain to which the shared drive belongs. For more information, see [Manage shared drives as domain administrators](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives#manage-administrators).
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		enforceExpansiveAccess (Boolean): Whether the request should enforce expansive access rules.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/permissions' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.