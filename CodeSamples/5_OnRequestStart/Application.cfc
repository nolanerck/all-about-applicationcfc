<cfcomponent>

	<cfset this.name = "VandelayIndustriesApp" />


	<cffunction name="onApplicationStart" returnType="boolean" output="true">
		<cfset application.datasource = "Vandelay_dsn" />
		<cfset application.appStartupTime = Now() />

		<cfreturn true />
	</cffunction>


	<cffunction name="onRequestStart" returnType="boolean" output="true">
		<cfargument name="thePage" type="string" required="true">

		<!--- does the user have "delete" permission in the app? --->
		<cfif arguments.thePage contains "deleteUsers">
			<cfparam name="session.hasDeletePerms" default="false">

			<!--- can't delete, redirect the user. --->
			<cfif session.hasDeletePerms eq false>
				<cflocation url="index.cfm" addtoken="false" />
			</cfif>
		</cfif>

		<cfif IsDefined( "url.reinit" )>
			<cfset onApplicationStart() />
		</cfif>

		<cfreturn true />
	</cffunction>

</cfcomponent>