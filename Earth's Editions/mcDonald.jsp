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
		
		<div class=header>
			<a href="home.jsp"><img style="margin-left: 360px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		</div>
		<img id="logo" src="web_images/mcdlogo.jpg">
	
		
		<br>
		<br>
		<h3 id="menu">Menu</h3>
		
		<iframe width="100%" height="300px"
		src="https://www.youtube.com/embed/whYvzjwGTe8?autoplay=1">
		</iframe>
		<table style="width:100%">
		  <tr>
		    <th style="font-size: 45px;">Foods</th>
		    <th style="font-size: 45px;">Image</th>
		    <th style="font-size: 45px;">Price</th>
		    <th style="font-size: 26px;">Add to Cart</th>
		  </tr>
		  <tr id = "add1">
		    <td>Snack Wrap</td>
		    <td><img src="web_images/snackwrap.jpg"></td>
		    <td>$1.99</td>
		    <td class = "add" onclick = "getText(1)">Add</td>		    
		  </tr>
		  <tr id = "add2">
		    <td>Happy Meal</td>
		    <td><img src="web_images/happymeal.jpg"></td>
		    <td>$6.50</td>
	      	<td class = "add" onclick = "getText(2)">Add</td>
		   
		  </tr>
		  <tr id = "add3">
		    <td>Apple pie</td>
		    <td><img src="web_images/applepie.jpg"></td>
		    <td>$1.50</td>
		     <td class = "add" onclick = "getText(3)">Add</td>
		 
		  </tr>
		  <tr id = "add4">
		    <td>Cheese Burger</td>
		    <td><img src="web_images/cheeseburger.jpg"></td>
		    <td>$3.25</td>
		     <td class = "add" onclick = "getText(4)">Add</td>
		 
		  </tr>
		  <tr id = "add5">
		    <td>McMuffin</td>
		    <td><img src="web_images/mcmuffin.jpg"></td>
		    <td>$3.25</td>
		     <td class = "add" onclick = "getText(5)">Add</td>
		 
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
		  xhr.open("GET", "${pageContext.request.contextPath}/RestaurantAddItemServlet?testVar=McDonald's  "+textContent, true);
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















