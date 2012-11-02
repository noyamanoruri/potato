<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		<link rel="stylesheet" href="../../stylesheets/style.css" type="text/css">
		<link rel="stylesheet" href="../../stylesheets/menu.css"  type="text/css">
	</head>
	<body>
		<div id="wrapper">
			<div style="float:right">
			<cfoutput>#session.user.username# #linkTo(text="Logout", controller="Login", action="signout")#</cfoutput>
			</div>
			<div id="header">
				<div id="banner">
					<img src="../../images/Elements/banner.png" >
				</div><!--- end banner div --->
				<div id='cssmenu'>
					<cfoutput>
					<ul>
			 		<li>#linkTo(text="<span>Home</span>", action="adminHome")#</li>
					   <li class="has-sub"><a href='##'><span>Accounts</span></a>
					      <ul>
							<li>#linkTo(text="<span>Admin</span>", action="accountAdmin")#</li>
							 <li>#linkTo(text="<span>Student</span>", action="accountstudent")#</li>
							 <li>#linkTo(text="<span>Faculty</span>", action="accountfaculty")#</li>
							 <li>#linkTo(text="<span>Staffs</span>", action="accountstaff")#</li>
					  
					      </ul>
					   </li>
					</ul>
					</cfoutput>
				</div><!--- end navbar div --->
							
							 
			</div><!--- end header div --->	
			
			
			<div id="content">
				
					<cfoutput>#includeContent()#</cfoutput>
					
			</div><!--- end content div --->
			<div id="footer">
				<img src="../../images/Elements/footer.png" >
			</div><!--- end footer div --->
		</div><!--- end wrapper div --->
		

	
	</body>
</html>



