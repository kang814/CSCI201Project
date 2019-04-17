<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.LinkedList" %>
<%@page import="javafx.util.Pair"%>
<%@page import="classes.Date" %>
<!DOCTYPE html>
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="profile.css">
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title> nibble - Profile </title>
  </head>
  <body>
  
  
  	<%
  		session = request.getSession();
  	
  		LinkedList<Pair<String, Date> > queue = (LinkedList<Pair<String, Date> >)request.getAttribute("q");
  	%>
  
  	<div class=header>
		<a href="profile.jsp"><img style="margin-left: 10px; float:left; width: 125px; height: 125px;" src="./web_images/person_icon_image.png" alt="Profile Image"></a>
		<a href="home.jsp"><img style="margin-left: 330px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		<a href="checkout.jsp"><img style="margin-right: 10px; float:right; width: 125px; height: 125px;" src="./web_images/cart_test_image.png" alt="Cart"></a>
	</div>

	<div id="info">
		<!-- Modal content -->
		<div class="modal-content">
			<p style="font-size: 22px;">Profile Info </p>
			<p style="font-size: 20px;">U: <strong><%=(String) session.getAttribute("username")%></strong></p>
		</div>
	</div>
 
  	<div id="mainDiv">
		
		<!-- <input type="text" placeholder="Search for a restaurant" id = "search"> -->
		<table>
			<%
			while(!queue.isEmpty()) {
				Pair p = queue.removeLast();
				Date d = (Date)p.getValue();
				String dabOnHaters = (String)p.getKey();
				dabOnHaters = dabOnHaters.substring(0,1).toUpperCase() + dabOnHaters.substring(1);
				String dab = d.month +" "+ d.day + ", " + d.year;
			%>
			<tr>
				<td><%= dabOnHaters %></td><td><%= dab %></td>
			</tr>
			<%
			}
			%>
			
			<!--  
			<tr>
				<td>TacoBell</td><td>11-1-2018</td>
			</tr>
			<tr>
				<td>Wendys</td><td>12-8-2018</td>
			</tr>
			<tr>
				<td>Chipotle</td><td>1-3-2019</td>
			</tr>
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
			</tr> -->
		</table>
		
	</div>
	
	
	<button style="margin-left: 100px; type="button" class="butn" onclick="location.href='changePassword.jsp'">Change Password</button>
	<button style="margin-left: -20px; "type="button" class="butn" onclick="location.href='signout'">Signout</button>
	
	
  </body>
  
  <script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
</html>