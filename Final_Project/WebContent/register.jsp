<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Register</title>
		<link rel="stylesheet" type="text/css" href="register.css">
	</head>
	<body>
	<div>
		<div id="header">
		<h1 id="nibble" onclick="goHome()">nibble.</h1>
		</div>
	
		<br>
		
		
		<div id=registerSite>
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