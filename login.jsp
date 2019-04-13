<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="login.css">
	</head>
	<body>
	<div id="header">
		<h1 id="nibble" onclick="goHome()">nibble.</h1>
	</div>
	
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
			<input id="login" type="submit" name="submit" value="login">
			<br>
			<br>
		</form>
	</div>
	<br>
	<br>
	
	
	<div id="guest">
		<b><a id="or">OR</a></b>
		<br>
		<br>
		<h1 id="inguest">Guest</h1>
	</div>
	
	</body>
	<script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
	
</html>