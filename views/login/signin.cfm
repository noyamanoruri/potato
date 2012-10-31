<div id="signin-frame">
	
	
	<div id="signin-head">
		<img src="../../images/Elements/sign-in-header.png">
	</div>
	<div id="signin-form">
		<cfoutput>
			#startFormTag(action="authenticate", id="sign-in-controlls")#
			<table>
				<tr>
			#textField(label="Username:",objectName="user",property="username",prependToLabel="<td>",appendToLabel="</td>", prepend="<td>",append="</td>")#
			</tr>
			<tr>
			#textField(label="Password:",objectName="user",property="password",prependToLabel="<td>",appendToLabel="</td>", prepend="<td>",append="</td>")#
			</tr>
			#endFormTag()#
			
			
			
			
			
			</table>
			
		</cfoutput>
		
	</div>
	
</div><!--- signinFrame div --->