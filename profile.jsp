<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="profile.css">
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
		<h2>Profile</h2>
		<h4>Username: kevinazh@usc.edu</h4>
		<h3>Order History</h3>
		<!-- <input type="text" placeholder="Search for a restaurant" id = "search"> -->
		<table id="history">
			<tr>
				<td>McDonalds</td><td>10-20-2018</td>
			</tr>
			<tr>
				<td>TacoBell</td><td>11-1-2018</td>
			</tr>
			<tr>
				<td>Wendys</td><td>12-8-2018</td>
			</tr>
			<tr>
				<td>Chipotle</td><td>1-3-2019</td>
			</tr>
		</table>
		
		<button type="button" class="butn" onclick="location.href='changePassword.jsp'">Change Password</button>
		
	</div>
	
	
  </body>
  
  <script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
</html>