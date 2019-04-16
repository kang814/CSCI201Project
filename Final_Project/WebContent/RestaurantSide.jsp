<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="classes.menuItem"%>
<%@page import="classes.ChatRoom" %>
<%@page import="classes.ChatClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%


%>
<html>

	<!-- <script>
	function checkOrder() {           
		var xhttp= new XMLHttpRequest(); 
		xhttp.open("POST", "CheckOrdersServlet", true);          
		xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");          
		xhttp.onreadystatechange= function() {    
			document.getElementById("Restaurant").innerHTML= this.responseText;
		}
		console.log("AJAX user called")
		xhttp.send();	
	}
	
	window.onload=checkOrder();
	</script>-->




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
					<input type="submit" name="submit" value="Start Chat" id="button"/>
				</form>
				
				<form name="check" method="post" action="StartClient" id="form">
					<input type="submit" name="submit" value="Start Client" id="button"/>
				</form>
			
			<form name="check" method="post" action="CheckOrdersServlet" id="form">
					<input type="submit" name="submit" value="Check Orders" id="button"/>
				</form>
			
				<p id="Restaurant">No orders yet..<p>
				<!-- <button onclick="checkOrder();">Refresh Orders</button>-->
			</div>
		</div>
		
	</body>
	
</html>