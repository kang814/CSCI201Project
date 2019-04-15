<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.menuItem"%>
    
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>McDonald</title>
	  	<link rel="stylesheet" type="text/css" href="mcd.css">
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
		
	
	
	
		<img id="logo" src="mcdlogo.jpg">
		<br>
		<br>
		<h3 id="menu">Menu</h3>
		
		
		<table style="width:100%">
		  <tr>
		    <th>Foods</th>
		    <th>Image</th>
		    <th>Price</th>
		    <th>Add to Cart</th>
		  </tr>
		  <tr>
		    <td>Snack Wrap</td>
		    <td><img src="snackwrap.jpg"></td>
		    <td>$1.99</td>
		    <td onclick="addItem(1)">Add</td>
		    
		  </tr>
		  <tr>
		    <td>Happy Meal</td>
		    <td><img src="happymeal.jpg"></td>
		    <td>$6.50</td>
	      	<td>Add</td>
		   
		  </tr>
		  <tr>
		    <td>Apple pie</td>
		    <td><img src="applepie.jpg"></td>
		    <td>$1.50</td>
		     <td>Add</td>
		 
		  </tr>
		  <tr>
		    <td>Cheese Burger</td>
		    <td><img src="cheeseburger.jpg"></td>
		    <td>$3.25</td>
		     <td>Add</td>
		 
		  </tr>
		  <tr>
		    <td>McMuffin</td>
		    <td><img src="mcmuffin.jpg"></td>
		    <td>$3.25</td>
		     <td>Add</td>
		 
		  </tr>
		</table>
		
	</body>
</html>