<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList" %>
<%
	ArrayList<String> l = (ArrayList<String>)session.getAttribute("ls");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				<p><%= l.get(0) %></p>
				<p><%= l.get(1) %>STILL NEED TO FIX</p>
				
			</div>
		</div>
		
	</body>
	
</html>