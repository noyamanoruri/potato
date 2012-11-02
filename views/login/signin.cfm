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
			#passwordField(label="Password:",objectName="user",property="password",prependToLabel="<td>",appendToLabel="</td>", prepend="<td>",append="</td>")#
			</tr>
			<tr>
				
				<td>#linkTo(text="Forgot password?",controller="user",action="forgot")#</td>
				<td align="right">#submitTag(image="../images/Elements/sign-in-button.png")#</td>
			</tr>
				#endFormTag()#
		
			</table>
			<br/>
			<div id="flash">
				#flash("error")#
			</div>
			
			
		</cfoutput>
		
	</div>
	
</div><!--- signinFrame div --->