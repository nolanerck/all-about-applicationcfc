<cfcomponent>

	<cfset this.name = "OurPublicFacingApp">

	<cffunction name="onApplicationStart" returnType="boolean" output="true">
		<cfset application.datasource = "OurDSN" />
		<cfset application.appStartupTime = Now() />

		<cfreturn true />
	</cffunction>

</cfcomponent>