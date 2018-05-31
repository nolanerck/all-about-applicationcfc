<cfcomponent extends="ApplicationProxy">

	<cfset this.name = "OurAdminTools" />

	<cffunction name="onRequest" returnType="boolean" output="true">
		<cfargument name="targetPage" type="string" required="true">

		<!--- does the user have "delete" permission in the app? --->
		<cfparam name="session.isAdmin" default="false">

		<!--- can't delete, redirect the user. --->
		<cfif session.isAdmin eq false>
			<cfinclude template="accessdenied.cfm">
		</cfif>

		<cfinclude template="#arguments.targetPage#" />

		<cfreturn true />
	</cffunction>

</cfcomponent>