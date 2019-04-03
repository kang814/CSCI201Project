<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="classes.menuItem"%>
<%@ page session="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

	///Test Array///
	ArrayList<menuItem> myOrder = new ArrayList<menuItem>();

	
	menuItem myItem = new menuItem("oreo", 13.99, "TraderJoes");
	menuItem myItem2 = new menuItem("cookies", .99, "Target");
	menuItem myItem3 = new menuItem("pizza", 1.99, "CPK");
	menuItem myItem4 = new menuItem("donut", 3.99, "Dulce");
	
	menuItem myItem5 = new menuItem("oreo", 13.99, "TraderJoes");
	menuItem myItem6 = new menuItem("cookies", .99, "Target");
	menuItem myItem7 = new menuItem("pizza", 1.99, "CPK");
	menuItem myItem8 = new menuItem("donut", 3.99, "Dulce");
	
	menuItem myItem9 = new menuItem("oreo", 13.99, "TraderJoes");
	menuItem myItem10 = new menuItem("cookies", .99, "Target");
	menuItem myItem11= new menuItem("pizza", 1.99, "CPK");
	menuItem myItem12= new menuItem("donut", 3.99, "Dulce");
	
	myOrder.add(myItem);
	myOrder.add(myItem2);
	myOrder.add(myItem3);
	myOrder.add(myItem4);
	myOrder.add(myItem5);
	myOrder.add(myItem6);
	myOrder.add(myItem7);
	myOrder.add(myItem8);
	myOrder.add(myItem9);
	myOrder.add(myItem10);
	myOrder.add(myItem11);
	myOrder.add(myItem12);

	/*
	//Uncomment this section when done testing
	session = request.getSession();
	myOrder = (ArrayList<menuItem>) session.getAttribute("orderList");
	*/
	
	//okay so once we get the menuItems that are being ordered we can then add that to the checkout 
	
	for(int i=0; i<myOrder.size(); i++){
		//now go through the whole array and print out the menuItems
		System.out.println("Order Number: "+(i+1));
		System.out.println("|||||||||||||||||||");
		System.out.println(myOrder.get(i).getName());
		System.out.println(myOrder.get(i).getRestuarant());
		System.out.println(myOrder.get(i).getPrice());
		System.out.println("|||||||||||||||||||");
	}
	
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
	<img style="margin-left: 10px; float:left; width: 125px; height: 125px;" src="./web_images/cart_test_image.png" alt="Cart">
	<img style="margin-left: 330px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble">
	<img style="margin-right: 10px; float:right; width: 125px; height: 125px;" src="./web_images/person_icon_image.png" alt="Profile Image">
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
			<h2>Looks like you still haven't picked your nibble...:(</h2>
		<%} %>
		</div>
	</div>
	
	<div id="modal2">
		<!-- Modal content -->
		<div class="modal-content"></div>
		<h2 style="margin-left: 5%;">Deals</h2>
	</div>
	
	<div id="modal3">
		<!-- Modal content -->
		<div class="modal-content"></div>
		<h1 style="margin-left: 5%;">Total: </h2>
		
	</div>








</body>
</html>