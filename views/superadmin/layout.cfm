<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		<link rel="stylesheet" href="../../stylesheets/style.css" type="text/css">
		<link rel="stylesheet" href="../../stylesheets/menu.css"  type="text/css">
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="banner">
					<img src="../../images/Elements/banner.png" >
				</div><!--- end banner div --->
				<div id='cssmenu'>
					<cfoutput>
					<ul>
			   <li><a href='##'><span>Home</span></a></li>
					   <li class="has-sub"><a href='##'><span>Accounts</span></a>
					      <ul>
							<li>#linkTo(text="<span>Admin</span>", action="accountadmin")#</li>
							 <li>#linkTo(text="<span>Student</span>", action="accountstudent")#</li>
							 <li>#linkTo(text="<span>Faculty</span>", action="accountfaculty")#</li>
							 <li>#linkTo(text="<span>Staffs</span>", action="accountstaff")#</li>
					  
					      </ul>
					   </li>
					</ul>
					</cfoutput>
				</div><!--- end navbar div --->
							
							 
			</div><!--- end header div --->	
			
			<cfoutput>#linkTo(text="logout", controller="Login", action="logout")#</cfoutput>
			<div id="content">
				
					<cfoutput>#includeContent()#</cfoutput>
					
			</div><!--- end content div --->
			<div id="footer">
				<img src="../../images/Elements/footer.png" >
			</div><!--- end footer div --->
		</div><!--- end wrapper div --->
		

	
	</body>
</html>



