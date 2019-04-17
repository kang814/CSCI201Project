<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Register</title>
		<link rel="stylesheet" type="text/css" href="register.css">
	</head>
	<%
		String error =null;
		error = (String)request.getAttribute("error");
	%>
	<body>
	<div>
		<div class=header>
			<a href="home.jsp"><img style="margin-left: 25%; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		</div>
	
	
		<br>
		
		
		<div id="registerSite">
			<h1>Register</h1>
			<form action="register" method="post">
				<b>Username</b>
				<input type="text" name="username">
				<br>
				<br>
				<b>Password</b>
				<input type="password" name="password">
				<br>
				<br>
				<b>Address</b>
				<input type="text" name="address">
				<br><br>
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
						<a style="color:red;">Password Error</a>
					<% 
					
				}
				else
				{
					%>
					
					<%
				}
				
				
				%>
				<br>
				<input id="submitButton" type="submit" value="Register">
				<br><br>
			</form>
		</div>
		
	</div>
	</body>
	<script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
</html>