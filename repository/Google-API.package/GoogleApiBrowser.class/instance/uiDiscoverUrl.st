user interface
uiDiscoverUrl

	| m dm |
	m := Morph new layoutPolicy: ProportionalLayout new.

	m
		addMorph: (PluggableButtonMorph
				 on: self
				 getState: nil
				 action: #btnDiscoverClick
				 label: #btnDiscoverLabel)
		fullFrame: (LayoutFrame
				 fractions: (0 @ 0 corner: 0 @ 0)
				 offsets: (0 @ 0 corner: 100 @ 30)).
	dm := RubTextFieldMorph new.
	dm
		on: self
		text: #txtDiscoverUrl
		accept: #txtDiscoverUrl:
		readSelection: nil
		menu: nil.
	m addMorph: dm.

	"m fullFrame: (LayoutFrame
			 fractions: (0 @ 0 corner: 1 @ 0)
			 offsets: (100 @ 0 corner: 0 @ 30))."
	dm autoAccept: true.
	dm acceptOnCR: true.

	^ m