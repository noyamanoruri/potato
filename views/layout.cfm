<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		<link rel="stylesheet" href="../../stylesheets/style.css" type="text/css">
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="banner">
					<img src="../../images/Elements/banner.png" >
				</div><!--- end banner div --->
				<div id="navbar">
					
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



