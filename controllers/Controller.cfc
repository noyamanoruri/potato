<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	
	<cffunction name="init">
		<cfset filters(through="checkLogin", except="signin,authenticate,bulletine")>
		
		
	</cffunction>
	
	<cffunction name="checkLogin">
		<cfif not structKeyExists(session,"user")>
			<cfset redirectTo(controller="login", action="signin")>
		</cfif>
		
	</cffunction>
</cfcomponent>