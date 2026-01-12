instance creation
newForConfigFile: aConfigFile scopes: aCollection

	^ self new
		  configFile: aConfigFile;
		  scopes: aCollection;
		  yourself