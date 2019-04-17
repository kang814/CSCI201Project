<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="login.css">
	</head>
	<%
		String error =null;
		error = (String)request.getAttribute("error");
	%>
	<body>
	
	<div class=header>
		<a href="home.jsp"><img style="margin-left: 25%; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
	</div>
	
	<br>
	<br>
	<br>
	<div id="loginSite">
		<h1>Login</h1>

		<form action="login" method="post">
			<b>Username</b>
			<input type="text" name="username">
			<br>
			<br>
			<b>Password</b>
			<input type="password" name="password">
			<br>
			<br>
			<input id="login" type="submit" name="submit" value="Login">
			<br>
			<%
				if(error=="")
				{
					
				}
				else if(error=="username")
				{
					%>
					<a style="color:red;">Username Error</a>
					
					<% 
				}
				else if(error=="password")
				{
					%>
						<a style="color:red;">Login Error</a>
					<% 
					
				}
				else
				{
					%>
					
					<%
				}
				
				
				%>
			<br>
		</form>
	</div>
	<br>
	<br>

	
	</body>
	<script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
	
</html>