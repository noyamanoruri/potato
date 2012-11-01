[1mdiff --git a/stylesheets/style.css b/stylesheets/style.css[m
[1mindex b0b2f1d..485c282 100644[m
[1m--- a/stylesheets/style.css[m
[1m+++ b/stylesheets/style.css[m
[36m@@ -1,24 +1,46 @@[m
 body{[m
 	[m
 }[m
[31m-[m
[32m+[m[32m/*[m
[32m+[m[32mLay out[m
[32m+[m[32m*/[m
 #wrapper{[m
[31m-	width:901px;[m
[31m-	height:400px;[m
[32m+[m	[32mwidth:903px;[m
[32m+[m[41m	[m
 	margin-left:auto;[m
 	margin-right:auto;[m
 }[m
[31m-/*[m
[31m-header styles[m
[31m-*/[m
[32m+[m
 #header{[m
 	height:161px;[m
 }[m
 #navbar{[m
[31m-background-image:url("../images/Elements/navbar.jpg");[m
[31m-background-repeat:repeat-x;[m
[32m+[m	[32mbackground-image:url("../images/Elements/navbar.jpg");[m
[32m+[m	[32mbackground-repeat:repeat-x;[m
 	height:37px;[m
[31m-	border:solid 1px #000;[m
[31m-	width:901px;[m
[32m+[m	[32mwidth:903px;[m
[32m+[m	[32m}[m
[32m+[m[32m/*[m
[32m+[m[32mlogin[m
[32m+[m[32m*/[m
[32m+[m[32m#signin-frame{[m
[32m+[m	[32mmargin-top:60px;[m
[32m+[m	[32mmargin-bottom:180px;[m
[32m+[m	[32mheight:181px;[m
[32m+[m	[32mwidth:354px;[m
[32m+[m	[32mmargin-right:50px;[m
[32m+[m	[32mfloat:right;[m
[32m+[m[41m	[m
[32m+[m[32m}[m
[32m+[m[32m#signin-form{[m
[32m+[m	[32mbackground-color:#cccccc;[m
[32m+[m	[32mmargin-left:auto;[m
[32m+[m	[32mmargin-right:auto;[m
[32m+[m	[32mwidth:336px;[m
[32m+[m	[32mheight:148px;[m
[32m+[m
[32m+[m
[32m+[m[41m	[m
 }[m
 [m
[41m+[m
[1mdiff --git a/views/login/signin.cfm b/views/login/signin.cfm[m
[1mindex 6b2fc40..d57bad5 100644[m
[1m--- a/views/login/signin.cfm[m
[1m+++ b/views/login/signin.cfm[m
[36m@@ -1 +1,20 @@[m
[31m-﻿<div id="">[m
\ No newline at end of file[m
[32m+[m[32m﻿<div id="signin-frame">[m
[32m+[m[41m	[m
[32m+[m[41m	[m
[32m+[m[41m	[m
[32m+[m	[32m<div id="signin-head">[m
[32m+[m		[32m<img src="../../images/Elements/sign-in-header.png">[m
[32m+[m	[32m</div>[m
[32m+[m	[32m<div id="signin-form">[m
[32m+[m[41m		[m
[32m+[m		[32m<cfoutput>[m
[32m+[m			[32m#startFormTag(action="authenticate")#[m
[32m+[m			[32m#textField(label="Username:",objectName="user",property="username")#[m
[32m+[m			[32m#endFormTag#[m
[32m+[m[41m			[m
[32m+[m		[32m</cfoutput>[m
[32m+[m[41m		[m
[32m+[m[41m		[m
[32m+[m	[32m</div>[m
[32m+[m[41m	[m
[32m+[m[32m</div><!--- signinFrame div --->[m
\ No newline at end of file[m
