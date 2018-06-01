<cfcomponent>

	<cfset this.name = "VandelayIndustries_Webapp" />
	<cfset this.loginStorage 		= "session" />
	<cfset this.sessionManagement 	= true />
	<cfset this.clientManagement    = false />
	<cfset this.sessionTimeout 	 	= createTimeSpan( 0, 8, 0, 0 ) />

	<cfset this.setClientCookies = true />
	
	<cfset this.mappings 				  = structNew() />
	<cfset this.mappings[ "/cfc" ] 		  = getDirectoryFromPath( getCurrentTemplatePath() ) & "cfc/" />
	<cfset this.mappings[ "/appwebroot" ] = expandPath( "/" ) />

	<cfset this.customtagpaths = ExpandPath( "/CustomTags" ) />

	<!--- <cfinclude template="/appwebroot/filename.cfm" /> --->

</cfcomponent>