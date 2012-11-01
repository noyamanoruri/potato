<cfcomponent extends="Controller" >
	
		<cffunction name="init">
		<cfset filters(through="checkUserType")>
		
		</cffunction>
	<cffunction name="adminhome">
		<cfset user=model("user").new()>
		
		
		
	</cffunction>
	
	<cffunction name="addstudent">
	
		
	</cffunction>
	
	
	
	<cffunction name="checkUserType">
			<cfif NOT session.user.type IS "admin">
				<cfset redirectTo(Controller="Login", action="signou")>
			
			</cfif>
		
		
	</cffunction>

</cfcomponent>