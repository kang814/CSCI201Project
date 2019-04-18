<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.menuItem"%>
    
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>HoneyBird</title>
	  	<link rel="stylesheet" type="text/css" href="honeybird.css">
		<%
			String restaurantName = (String)request.getAttribute("restaurantName");
		
		%>
	</head>
	<body>
		<%
  	
		  	session = request.getSession();
		  	session.setAttribute("checkLogin", false);
		  	ArrayList<menuItem> myOrder = new ArrayList<menuItem>();
		  	session.setAttribute("orderList", myOrder);
		  	boolean loggedIn = (boolean)session.getAttribute("checkLogin");
 		%>
		
	
	
		<div class=header>
			<a href="home.jsp"><img style="margin-left: 360px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		</div>
		
		<img id="logo" src="web_images/honeybirdlogo.png">
		<br>
		<br>
		<h3 id="menu">Menu</h3>
		
		
		<table style="width:100%">
		  <tr>
		    <th style="font-size: 45px;">Foods</th>
		    <th style="font-size: 45px;">Image</th>
		    <th style="font-size: 45px;">Price</th>
		    <th style="font-size: 26px;">Add to Cart</th>
		  </tr>
		  <tr id = "add1">
		    <td>Full Fried Chicken</td>
		    <td><img src="web_images/friedchicken.jpg"></td>
		    <td>$12.99</td>
		    <td class ="add" onclick = "getText(1)">Add</td>
		    
		  </tr>
		  <tr id = "add2">
		    <td>Half Fried Chicken</td>
		    <td><img src="web_images/halfchicken.jpg"></td>
		    <td>$7.99</td>
	      	<td class ="add" onclick = "getText(2)">Add</td>
		   
		  </tr>
		  <tr id = "add3">
		    <td>12 pc Chicken Wings</td>
		    <td><img src="web_images/chickenwings.jpg"></td>
		    <td>$11.50</td>
		     <td class ="add" onclick = "getText(3)">Add</td>
		 
		  </tr>
		  <tr id = "add4">
		    <td>2 pc Chicken Leg</td>
		    <td><img src="web_images/chickenleg.jpg"></td>
		    <td>$9.25</td>
		     <td class ="add" onclick = "getText(4)">Add</td>
		 
		  </tr>
		  <tr id = "add5">
		    <td>French Fries</td>
		    <td><img src="web_images/frenchfries.jpg"></td>
		    <td>$3.45</td>
		     <td class ="add" onclick = "getText(5)">Add</td>
		 
		  </tr>
		</table>
		
	</body>
	
	<script type="text/javascript">
	
	function getText(x) {
		if(x == 1) { var node = document.getElementById("add1"); }
		if(x == 2) { var node = document.getElementById("add2"); }
		if(x == 3) { var node = document.getElementById("add3"); }
		if(x == 4) { var node = document.getElementById("add4"); }
		if(x == 5) { var node = document.getElementById("add5"); }
		
		textContent = node.textContent;
		console.log(textContent);
		
		//send to servlet
		  var xhr = new XMLHttpRequest();
		  xhr.open("GET", "${pageContext.request.contextPath}/RestaurantAddItemServlet?testVar=Honeybird  "+textContent, true);
		  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		
		  xhr.onreadystatechange = function () {
		  if(xhr.readyState === 4 && xhr.status === 200) {
		    console.log(xhr.responseText);
		  }
		  };
		  xhr.send();
	
	}
	
	</script>
</html>