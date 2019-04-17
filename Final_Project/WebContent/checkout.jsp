<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="classes.menuItem"%>
<%@page import="classes.CustomerClient" %>



<%@ page session="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	double total = 0;
	//Uncomment this section when done testing
	ArrayList<menuItem> myOrder = new ArrayList<menuItem>();
	session = request.getSession();
	//myOrder = //(ArrayList<menuItem>) session.getAttribute("orderList");
	menuItem m = new menuItem("Fries", 1.99, "mcd");
	menuItem n = new menuItem("Borger", 9.99, "mcd");
	myOrder.add(m);
	myOrder.add(n);
	boolean loggedIn = (boolean)session.getAttribute("checkLogin");
	String name = "";
	if(loggedIn)
	{
		//String name = (String)session.getAttribute("username");
	}

	
	//okay so once we get the menuItems that are being ordered we can then add that to the checkout 
	
	for(int i=0; i<myOrder.size(); i++){
		//now go through the whole array and print out the menuItems
		System.out.println("Order Number: "+(i+1));
		System.out.println("|||||||||||||||||||");
		System.out.println(myOrder.get(i).getName());
		System.out.println(myOrder.get(i).getRestuarant());
		System.out.println(myOrder.get(i).getPrice());
		total += myOrder.get(i).getPrice();
		System.out.println("|||||||||||||||||||");
	}
	total = Math.round(total * 100);
	total = total/100;
	
	
	CustomerClient cc = new CustomerClient("localhost", 6789, myOrder, name);
%>


<html>
<head>
	<meta name="viewport" content="initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="checkout.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Checkout</title>
</head>
<body>

<div class=header>
	<a href="profile.jsp"><img style="margin-left: 10px; float:left; width: 125px; height: 125px;" src="./web_images/person_icon_image.png" alt="Profile Image"></a>
	<a href="home.jsp"><img style="margin-left: 330px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
	<a href="checkout.jsp"><img style="margin-right: 10px; float:right; width: 125px; height: 125px;" src="./web_images/cart_test_image.png" alt="Cart"></a>
</div>


	<div class="modal">
		<!-- Modal content -->
		<div class="modal-content">
		<%if(myOrder.size()!=0){ %>
		<table cellspacing="40">
		<tr>
			<th></th>
			<th></th>
		    <th><strong>    Restaurant    </strong></th>
		    <th></th>
		    <th><strong>    Order    </strong></th> 
		    <th></th>
		    <th><strong>    Price    </strong></th>
	  	</tr>
	  	
		<%  
			System.out.println(myOrder.size()+" menu items were found!");
			for(int i=0; i<myOrder.size(); i++){
		%>		
			<tr>
				<td></td>
				<td></td>
				<td><%=myOrder.get(i).getRestuarant()%></td>
				<td></td>
				<td><%=myOrder.get(i).getName()%></td>
				<td></td>
				<td><%=myOrder.get(i).getPrice()%></td>
			</tr>	
		<%	
			}
		%>
		</table>
		<%} else{%>
			<h2>Looks like you still haven't picked your nibble... :(</h2>
		<%} %>
		</div>
	</div>
	
	<div id="modal2">
		<!-- Modal content -->
		<div class="modal-content"></div>
		<h2 style="margin-left: 5%;">Other people also like...</h2>
		
		<div class="scrolling-wrapper-flexbox" id = "bestDeals">
	  <div class = "wrap">
		  <div class="card">
		  	<img src = "web_images/mcd.jpg" alt = "mcd" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>McDonald's</b></h4>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/chipotle.jpg" alt = "chipotle" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Chipotle</b></h4>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/ono.jpg" alt = "ono" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Ono's Hawaiian BBQ</b></h4>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/dulce.jpg" alt = "dulce" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Dulce Cafe</b></h4>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/honeybird.jpg" alt = "honeybird" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Honeybird</b></h4>

		  	</div>
		  </div>
		  
	  </div>
	</div>
	 
	</div>
	
	<div id="modal3">
		<!-- Modal content -->
		<div class="modal-content">
		<h1 style="margin-left: 5%;">Total: $<%=total %></h2>
		<h6 style="margin-left: 15%; margin-top: -8%;">(+tax)</h6>
		
			<div id="payButton">
				<a href="StoreHistoryServlet"><h3 style="color: white; margin-left: 25px;">Pay Now</h3></a>
			</div>
		</div>
		
	</div>








</body>
</html>