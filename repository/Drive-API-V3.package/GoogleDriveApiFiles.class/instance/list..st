generated
list: optionsDict
	"
		 Lists the user's files. For more information, see [Search for files and folders](/workspace/drive/api/guides/search-files). This method accepts the `q` parameter, which is a search query combining one or more search terms. This method returns *all* files by default, including trashed files. If you don't want trashed files to appear in the list, use the `trashed=false` query parameter to remove trashed files from the results.

		Parameters, * = required, optional parameters in optionsDict

		supportsTeamDrives (Boolean): Deprecated: Use `supportsAllDrives` instead.
		includePermissionsForView (String): Specifies which additional view's permissions to include in the response. Only `published` is supported.
		spaces (String): A comma-separated list of spaces to query within the corpora. Supported values are `drive` and `appDataFolder`. For more information, see [File organization](https://developers.google.com/workspace/drive/api/guides/about-files#file-organization).
		includeLabels (String): A comma-separated list of IDs of labels to include in the `labelInfo` part of the response.
		driveId (String): ID of the shared drive to search.
		includeTeamDriveItems (Boolean): Deprecated: Use `includeItemsFromAllDrives` instead.
		q (String): A query for filtering the file results. For supported syntax, see [Search for files and folders](/workspace/drive/api/guides/search-files).
		teamDriveId (String): Deprecated: Use `driveId` instead.
		pageToken (String): The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from the previous response.
		corpus (String): Deprecated: The source of files to list. Use `corpora` instead.
		pageSize (Integer): The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.
		includeItemsFromAllDrives (Boolean): Whether both My Drive and shared drive items should be included in results.
		orderBy (String): A comma-separated list of sort keys. Valid keys are: * `createdTime`: When the file was created. * `folder`: The folder ID. This field is sorted using alphabetical ordering. * `modifiedByMeTime`: The last time the file was modified by the user. * `modifiedTime`: The last time the file was modified by anyone. * `name`: The name of the file. This field is sorted using alphabetical ordering, so 1, 12, 2, 22. * `name_natural`: The name of the file. This field is sorted using natural sort ordering, so 1, 2, 12, 22. * `quotaBytesUsed`: The number of storage quota bytes used by the file. * `recency`: The most recent timestamp from the file's date-time fields. * `sharedWithMeTime`: When the file was shared with the user, if applicable. * `starred`: Whether the user has starred the file. * `viewedByMeTime`: The last time the file was viewed by the user. Each key sorts ascending by default, but can be reversed with the `desc` modifier. Example usage: `?orderBy=folder,modifiedTime desc,name`.
		supportsAllDrives (Boolean): Whether the requesting application supports both My Drives and shared drives.
		corpora (String): Bodies of items (files or documents) to which the query applies. Supported bodies are: * `user` * `domain` * `drive` * `allDrives` Prefer `user` or `drive` to `allDrives` for efficiency. By default, corpora is set to `user`. However, this can change depending on the filter set through the `q` parameter. For more information, see [File organization](https://developers.google.com/workspace/drive/api/guides/about-files#file-organization).
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.