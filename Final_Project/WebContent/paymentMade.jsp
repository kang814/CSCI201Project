<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div id="modal-content-other">
				<p>Congrats Your Payment Went Through!</p>
				<p>This page should take you home soon, if not click <a href="home.jsp">here</a></p> 
			</div>
		</div>
	</body>
	
	<script>
	
		window.onload=setTimeout(function () {
	   	window.location.href = "home.jsp"; //will redirect to your blog page (an ex: blog.html)
		}, 5000); //will call the function after 5 secs.
		
	</script>
	
</html>