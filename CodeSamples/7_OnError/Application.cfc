<cfcomponent>
	<cfset this.name = "MyErrorProofApp" />

	<cffunction name="onError" returnType="void" output="true">
		<cfargument name="exception" required="true">
		<cfargument name="eventname" type="string" required="true">

		<cfif LCase( Trim( cgi.SERVER_NAME ) ) eq "ourDevServer.dev">
			<!--- Dev server, draw the error details. --->
			<cfdump var="#arguments.exception#" />
			<cfdump var="#arguments.eventname#" />
		<cfelse>
			<!--- Production. draw the "friendly" customer message. --->
			<h2>Sorry! Something bad happend, but we're working on it!</h2>
		</cfif>
	</cffunction>

</cfcomponent>