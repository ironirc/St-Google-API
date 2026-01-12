as yet unclassified
createMethodIn: aClass withSource: source

	| selector |
	selector := aClass compile: source classified: #generated.
	^ selector