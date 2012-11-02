<cfcomponent extends="Controller">
	
	<cffunction name=signin>
		<cfset user = model("user").new()>
	</cffunction>
	
	
	<cffunction name="authenticate">
		<cfset hashed=#Hash(params.user.password,"SHA" )#>
		
		<cfset user= model("user").findOneByUsernameAndPassword("#params.user.username#,#hashed#")>
	
		<cfif isObject(user)>
			<cfif user.type IS "admin">
				<cfset session.user.type="admin">
			</cfif>
			<cfset session.user.username=user.username>
			<cfset redirectTo(controller="SuperAdmin", action="adminhome")>
			
		<cfelse>
			<cfset user=model("user").new()>
			<cfset flashInsert(error="The username or password that you entered is not valid")>
			<cfset renderPage(action="signin")>
			</cfif>
			
	</cffunction>
	<cffunction name="signout">
		<cfset structDelete(session,"user")>
		<cfset redirectTo(action ="signin")>
	
		
	</cffunction>
	
</cfcomponent>