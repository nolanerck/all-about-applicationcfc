<cfcomponent>

	<cfset this.name = "VandelayIndustriesAppWithOnRequest" />

	<cffunction name="onRequest" returnType="boolean" output="true">
		<cfargument name="targetPage" type="string" required="true">

		<!--- does the user have "delete" permission in the app? --->
		<cfparam name="session.hasDeletePerms" default="false">

		<!--- can't delete, redirect the user. --->
		<cfif session.hasDeletePerms eq false>
			<cfinclude template="accessdenied.cfm">
		</cfif>

		<cfset var myTemplate = arguments.targetPage />

		<cfset GDPRMessage = "this site uses cookies..." />

		<cfset myTemplate = GDPRMessage & myTemplate />

		<cfinclude template="#myTemplate#" />

		<cfreturn true />
	</cffunction>

</cfcomponent>