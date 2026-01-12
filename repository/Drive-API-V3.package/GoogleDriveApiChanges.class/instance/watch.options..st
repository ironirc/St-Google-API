generated
watch: pageToken options: optionsDict
	"
		Subscribes to changes for a user. For more information, see [Notifications for resource changes](https://developers.google.com/workspace/drive/api/guides/push).

		Parameters, * = required, optional parameters in optionsDict

		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only 'published' is supported.
		spaces (String): A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'.
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
		driveId (String): The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
		includeTeamDriveItems (Boolean): Deprecated: Use `includeItemsFromAllDrives` instead.
		restrictToMyDrive (Boolean): Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
		teamDriveId (String): Deprecated: Use `driveId` instead.
		pageToken (String*): The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		includeRemoved (Boolean): Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
		pageSize (Integer): The maximum number of changes to return per page.
		includeCorpusRemovals (Boolean): Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
		includeItemsFromAllDrives (Boolean): Whether both My Drive and shared drive items should be included in results.
		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'changes/watch' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.