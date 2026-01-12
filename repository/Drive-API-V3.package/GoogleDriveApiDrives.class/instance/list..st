generated
list: optionsDict
	"
		 Lists the user's shared drives. This method accepts the `q` parameter, which is a search query combining one or more search terms. For more information, see the [Search for shared drives](/workspace/drive/api/guides/search-shareddrives) guide.

		Parameters, * = required, optional parameters in optionsDict

		useDomainAdminAccess (Boolean): Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.
		pageSize (Integer): Maximum number of shared drives to return per page.
		pageToken (String): Page token for shared drives.
		q (String): Query string for searching shared drives.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'drives' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.