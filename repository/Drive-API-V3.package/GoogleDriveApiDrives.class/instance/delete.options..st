generated
delete: driveId options: optionsDict
	"
		Permanently deletes a shared drive for which the user is an `organizer`. The shared drive cannot contain any untrashed items. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

		Parameters, * = required, optional parameters in optionsDict

		driveId (String*): The ID of the shared drive.
		useDomainAdminAccess (Boolean): Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
		allowItemDeletion (Boolean): Whether any items inside the shared drive should also be deleted. This option is only supported when `useDomainAdminAccess` is also set to `true`.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'drives/{driveId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.