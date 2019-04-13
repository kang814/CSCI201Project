<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String formError = (String)request.getAttribute("formError");
	String matchingError = (String)request.getAttribute("matchingError");
	
	if(formError == null) {
		formError = "";
	}
	if(matchingError == null) {
		matchingError = "";
	}
%>
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="changePassword.css">
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title> nibble - Profile </title>
  </head>
  <body>
  
  	<div id="header">
		<h1 id="nibble" onclick="goHome()">nibble.</h1>
		<button class="topButton" id = "profile" onclick= "location.href='profile.jsp'">Profile</button>
		<button class="topButton" id = "cart" onclick="location.href='cart.jsp'">Cart</button>
			
	</div>
  
  	<div id="mainDiv">
  		<h2>Change Your Password</h2>
		<div id="register">
		<form name="registerForm" method="post" action="ChangePasswordServlet" id="form">
			<div class="te">Old Password</div> <br /> <input type="password" name="oldpass" class="box"/> <br />
			<div class="te">New Password</div> <br /> <input type="password" name="newpword" class="box"/> <br />
			<div class="te">Confirm New Password</div> <br /> <input type="password" name="newpwordconfirm" class="box"/> <br />
			<strong><%= formError %><%= matchingError %></strong>
			<br />
			<input type="submit" name="submit" value="Change Password" id="butt"/>
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