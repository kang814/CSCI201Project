<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="login.css">
	</head>
	<body>
	<h1>Login</h1>
	<div>
		<form action="login" method="post">
			Username
			<input type="text" name="username">
			<br>
			Password
			<input type="password" name="password">
			<br>
			<a id="qr">Import QR Code</a>
			<br>
			<a id="guest">Guest</a>
			<br>
			<input type="submit" name="submit" value="login">
			
			
		</form>
	</div>
	</body>
</html>