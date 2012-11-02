<cfoutput>

	
	<cfset hashed=#Hash(params.user.password,"SHA" )#>
	
	#hashed#
	
</cfoutput>