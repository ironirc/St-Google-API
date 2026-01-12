instance creation
newForConfigFile: aConfigFile scopes: aCollection tokenCacheFile: aTokenCacheFile

	^ self new
		  configFile: aConfigFile;
		  scopes: aCollection;
		  tokenCacheFile: aTokenCacheFile;
		  yourself