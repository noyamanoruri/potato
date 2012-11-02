<cfoutput>
	

	<cfoutput>
		
		
	</cfoutput>
	
	#DateFormat(now(),"YY")#
	
	#startFormTag(action="createstudent")#
	<fieldset>
		<legend>Pesonal Information</legend>
		<table cellspacing="1" cellpadding="2" border="0">
		#textField(label="First name:", objectName="user",association="studentprofile", property="firstName")#
		#textField(label="Middle name:", objectName="user",association="studentprofile", property="middleName")#
		#textField(label="Last name:",objectName="user",association="studentprofile", property="lastName")#
		#select(label="Civil status",objectName="user",association="studentprofile",property="civilstatus",options="Single,Married")#

		        <div>
		        	
       <tr><td><strong>Gender</strong></td>
		#radioButton(objectName="user", property="gender", tagValue="m", label="Male", prependToLabel="<td>",appendToLabel="",prepend="",append="")#
     	#radioButton(objectName="user", property="gender", tagValue="f", label="Female", prependToLabel="",appendToLabel="",prepend="",append="</td>")#</tr>
		 <tr><td><strong>Address:</strong></td></tr>
		#textField(label="House number",objectName="user",association="studentprofile",property="houseNum")#
		#textField(label="Street",objectName="user",association="studentprofile",property="street")#
		#textField(label="City",objectName="user",association="studentprofile",property="city")#
		#textField(label="Zip Code",objectName="user",association="studentprofile",property="zipcode")#
		 
		 
	

		 	
			
		 </table>
      </fieldset>
	  
		
		
      
		</table>
		</fieldset>
		
	
	<fieldset>
			<legend>Academic Information</legend>
			<table>
		#select(label="Course",objectName="user",association="studentprofile",property="course",options="#courses#")#
		#select(label="Status",objectName="user",association="studentprofile",property="status",options="Regular,Irregular")#
		#select(label="Admission",objectName="user",association="studentprofile",property="admission",options="Old,New,Transferee")#
		</table>
		</fieldset>
			<fieldset>
				<legend>Contact</legend>
				<table>
			#textField(label="Email",objectName="user",property="email")#
			#textField(label="Confirm email",objectName="user",property="emailConfirmation")#
			#textField(label="Contact ##",objectName="user",association="studentprofile",property="email")#<br />
			
			</table>
			</fieldset>
			<fieldset>            
            	<legend> User Account Information </legend>
				<table>
					#textField(label="Secret quesion",objectName="user",property="secretQuestion")#
					#textField(label="Secret answer",objectName="user",property="secretAuestion")#
					#textField(label="Confirm answer",objectName="user",property="secretAnswerConfirmation")#

				</table>
			</fieldset>	
			
			
			#submitTag()#
			#endFormTag()#
	
		
		
		
	
	
	
</cfoutput>