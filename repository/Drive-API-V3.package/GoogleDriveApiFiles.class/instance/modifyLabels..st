generated
modifyLabels: fileId 
	"
		Modifies the set of labels applied to a file. For more information, see [Set a label field on a file](https://developers.google.com/workspace/drive/api/guides/set-label). Returns a list of the labels that were added or modified.

		Parameters, * = required, optional parameters in optionsDict

		fileId (String*): The ID of the file to which the labels belong.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'files/{fileId}/modifyLabels' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.