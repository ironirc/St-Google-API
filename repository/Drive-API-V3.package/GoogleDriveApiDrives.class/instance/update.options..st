generated
update: driveId options: optionsDict
	"
		Updates the metadata for a shared drive. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

		Parameters, * = required, optional parameters in optionsDict

		driveId (String*): The ID of the shared drive.
		useDomainAdminAccess (Boolean): Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'drives/{driveId}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.