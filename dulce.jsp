<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.menuItem"%>
    
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dulce</title>
	  	<link rel="stylesheet" type="text/css" href="dulce.css">
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
		<br>
		
		<img id="logo" src="web_images/dulcelogo.jpg">
		
		<h3 id="menu">Menu</h3>
		<table style="width:100%">
		  <tr>
		    <th style="font-size: 45px;">Foods</th>
		    <th style="font-size: 45px;">Image</th>
		    <th style="font-size: 45px;">Price</th>
		    <th style="font-size: 26px;">Add to Cart</th>
		  </tr>
		  <tr>
		    <td>Cranberry Walnut</td>
		    <td><img src="web_images/cranberry.jpg"></td>
		    <td>$7.99</td>
		    <td id="add">Add</td>
		    
		  </tr>
		  <tr>
		    <td>Asian Chicken Salad</td>
		    <td><img src="web_images/asianchicken.jpg"></td>
		    <td>$9.50</td>
	      	<td id="add">Add</td>
		   
		  </tr>
		  <tr>
		    <td>Mango Jicama Salad</td>
		    <td><img src="web_images/mango.jpg"></td>
		    <td>$9.50</td>
		    <td id="add">Add</td>
		 
		  </tr>
		  <tr>
		    <td>Spicy Chicken</td>
		    <td><img src="web_images/spicychicken.jpg"></td>
		    <td>$9.25</td>
		     <td id="add">Add</td>
		 
		  </tr>
		  <tr>
		    <td>Dulce Club</td>
		    <td><img src="web_images/dulceclub.jpg"></td>
		    <td>$9.25</td>
		     <td id="add">Add</td>
		 
		  </tr>
		</table>
		
	</body>
</html>