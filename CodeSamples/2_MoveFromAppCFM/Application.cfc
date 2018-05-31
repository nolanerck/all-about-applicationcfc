<cfcomponent>

	<cfset application.datasource = "ProdDatabase123" />
	<cfset application.adminEmail = "admin@mysitename.com" />
	<cfset application.currentTime = Now() />
	
	<cfif cgi.SERVER_NAME eq "prod.sitename.com">
		<cfset application.environment = "Production">
	<cfelse>
		<cfset application.environment = "Development">
	</cfif>

</cfcomponent>