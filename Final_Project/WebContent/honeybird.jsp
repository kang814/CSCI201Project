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
	
		<div class=header>
			<a href="home.jsp"><img style="margin-left: 485px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
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
		  <tr>
		    <td>Full Fried Chicken</td>
		    <td><img src="web_images/friedchicken.jpg"></td>
		    <td>$12.99</td>
		    <td id="add">Add</td>
		    
		  </tr>
		  <tr>
		    <td>Half Fried Chicken</td>
		    <td><img src="web_images/halfchicken.jpg"></td>
		    <td>$7.99</td>
	      	<td id="add">Add</td>
		   
		  </tr>
		  <tr>
		    <td>12 pc Chicken Wings</td>
		    <td><img src="web_images/chickenwings.jpg"></td>
		    <td>$11.50</td>
		     <td id="add">Add</td>
		 
		  </tr>
		  <tr>
		    <td>2 pc Chicken Leg</td>
		    <td><img src="web_images/chickenleg.jpg"></td>
		    <td>$9.25</td>
		     <td id="add">Add</td>
		 
		  </tr>
		  <tr>
		    <td>French Fries</td>
		    <td><img src="web_images/frenchfries.jpg"></td>
		    <td>$3.45</td>
		     <td id="add">Add</td>
		 
		  </tr>
		</table>
		
	</body>
</html>