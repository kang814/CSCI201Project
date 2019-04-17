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
  
  	<div class=header>
		<a href="profile.jsp"><img style="margin-left: 10px; float:left; width: 125px; height: 125px;" src="./web_images/person_icon_image.png" alt="Profile Image"></a>
		<a href="home.jsp"><img style="margin-left: 330px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		<a href="checkout.jsp"><img style="margin-right: 10px; float:right; width: 125px; height: 125px;" src="./web_images/cart_test_image.png" alt="Cart"></a>
	</div>
  
  	<div id="mainDiv">
  		<h2 style="margin-left: -14%;">Change Your Password</h2>
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