<cfcomponent extends="Controller" >
	
		<cffunction name="init">
	
		<cfset filters(through="checkUserType,super.checkLogin")>
		
		</cffunction>
	<cffunction name="adminhome">
		<cfset user=model("user").new()>
		
		
		
	</cffunction>
	
	<cffunction name="addstudent">
	
		
	</cffunction>
	
	
	
	<cffunction name="checkUserType">
		<cfif structKeyExists(session,"user")>
			<cfif NOT session.user.type IS "admin">
				<cfset redirectTo(Controller="Login", action="signin")>
				
			</cfif>
			<cfelse>
				<cfset redirectTo(controller="Login",action="signin")>
		
		</cfif>
	</cffunction>

</cfcomponent>