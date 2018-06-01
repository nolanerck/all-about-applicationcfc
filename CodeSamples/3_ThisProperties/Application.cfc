<cfcomponent>

	<!--- <cfapplication name="" sessionmanagement="" clientmanagement="" /> --->

	<cfset this.name = "VandelayIndustries_Webapp" />
	<cfset this.loginStorage 		= "session" />
	<cfset this.sessionManagement 	= true />
	<cfset this.clientManagement    = false />
	<cfset this.sessionTimeout 	 	= createTimeSpan( 0, 8, 0, 0 ) />

	<cfset this.setClientCookies = true />
	
</cfcomponent>