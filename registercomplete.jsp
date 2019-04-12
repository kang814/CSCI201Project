<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Register Complete</title>
		<%
			String username = (String)request.getAttribute("username");
			String password = (String)request.getAttribute("password");
			
		
		
		
		%>
	</head>
	<body>
		<h1>Register Complete</h1>
		<h2>Save this information!</h2>
		<br>
		<h4>Username: <%=username %></h4>
		<br>
		<h4>Password: <%=password %></h4>
		<br>
		<h4>QR Code</h4>
		<br>
		<img>insert qr img here
		<br>
		<a>Return Home</a>
		
	</body>
</html>