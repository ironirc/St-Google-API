accesing
categoryNameList
	^ PackageOrganizer default packageNames sorted: [ :a :b | a < b ].