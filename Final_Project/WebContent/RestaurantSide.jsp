<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="classes.menuItem"%>
<%@page import="classes.ChatRoom" %>
<%@page import="classes.ChatClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%


%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="checkout.css">
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    	<meta charset="UTF-8">
	</head>
	
	<body>
		<div id="paymentMade">
			<!-- Modal content -->
			<div class="modal-content">
				<form name="check" method="post" action="StartChat" id="form">
					<button onclick="changeToGreen(this)" class="butn" type="submit" name="submit" id="button"/>Open</button>
				</form>
				
				<form name="check" method="post" action="StartClient" id="form">
					<button onclick="changeToGreen(this)" class="butn" type="submit" name="submit" id="button"/>Start Accepting Orders</button>
				</form>
			
			<form name="check" method="post" action="CheckOrdersServlet" id="form">
					<button onclick="changeToGreen(this)" class="butn" type="submit" name="submit" id="button"/>Check Orders</button>
				</form>
				<!-- <button onclick="checkOrder();">Refresh Orders</button>-->
			</div>
		</div>
		
	</body>
	
	<script>
		function changeToGreen(myVar){
			myVar.style.background='green';
		}
			
	</script>
	
	
</html>