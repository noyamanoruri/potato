<cfcomponent extends="Controller" >
	
		<cffunction name="init">
	
		<cfset filters(through="checkUserType")>
		
		</cffunction>
	<cffunction name="adminhome">
	<cfset var newStudentProfile = model("studentprofile").new()>
    	<cfset user = model("user").new(studentprofile=newStudentProfile)>
		<cfset students= model("user").findAll(include="studentprofile")>

	</cffunction>
	
	
	
	<cffunction name="accountstudent">
		<cfset user=model("user").new()>
		<cfset studentprofile=model("studentprofile").new()>
	</cffunction>
	
	
	<cffunction name="addstudent">
		<cfset var newStudentProfile = model("studentprofile").new()>
    	<cfset user = model("user").new(studentprofile=newStudentProfile)>
		<cfset studentCourse=model("course").new()>
		<cfset courses=model("course").findAll(select="coursecode,coursedesc")>
	</cffunction>
	
	<cffunction name="createStudent">
		<cfset user= model("user").new()>
		
		<cfset hashedPassword=hash(params.user.studentprofile.lastname,"SHA" )>
		<cfset username=left(params.user.studentprofile.firstname,1) & left(params.user.studentprofile.middlename,1) & params.user.studentprofile.lastname>
		<cfset user = model("user").create(properties=params.user, username=username,password=hashedPassword,type="student")>
	
	
	
		
		<!---<cfset nigga=model("user").findAll()>--->
		
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