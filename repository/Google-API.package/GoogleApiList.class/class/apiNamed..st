accessing
apiNamed: anAPIName

	^ self apiAt: (APINameList
			   indexOf: anAPIName
			   ifAbsent: [ self error: 'No API named ' , anAPIName ])