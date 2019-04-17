<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="classes.menuItem"%>
<!DOCTYPE html>
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="home.css">
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title> nibble </title>
  </head>
  <body>
  
  	<%
  	session = request.getSession();
  	if(session.getAttribute("checkLogin")==null){
  		session.setAttribute("checkLogin", false);
  		session.setAttribute("username", "guest");
  	}
  	ArrayList<menuItem> myOrder = new ArrayList<menuItem>();
  	session.setAttribute("orderList", myOrder);
  	boolean loggedIn = (boolean)session.getAttribute("checkLogin");
  	System.out.println("Logged in is "+loggedIn);
  	%>

	 
	<div class=header>
		<%if(loggedIn){%>
		<a href="ProfileServlet"><img style="margin-left: 10px; float:left; width: 125px; height: 125px;" src="./web_images/person_icon_image.png" alt="Profile Image"></a>
		<a href="home.jsp"><img style="margin-left: 360px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
		<%} else{ %>
			<a href="login.jsp"><button style="margin-left: 2.5%; margin-top: 3%; border-radius: 10px; background-color: rgb(253, 185, 41); font-family: Avenir; float: left; width: 100px; height:50px; font-size: 16px;">Login</button></a>
			<a href="register.jsp"><button style="margin-left: 1%; margin-top: 3%; border-radius: 10px; background-color: rgb(253, 185, 41); font-family: Avenir; float:left; width: 100px; height:50px; font-size: 16px;">SignUp</button></a>
			<p style="color: black; float: left; margin-left: -14%; margin-top: 8%;">Hey Guest Nibbler!</p>
			<a href="home.jsp"><img style="margin-left: 250px; float:left; width: 300px; height: 125px;" src="./web_images/nibble.png" alt="nibble"></a>
			
		<%} %>
		<a href="checkout.jsp"><img style="margin-right: 10px; float:right; width: 125px; height: 125px;" src="./web_images/cart_test_image.png" alt="Cart"></a>
	</div>
  
	<h1 id = "What">What's your midnight snack today?</h1>
	
	<form action="searchRestaurant" method="get"> 
		<div class = "search-box">
			<input class = "search-txt" type = "text" name = "searchPlace" placeholder ="search for a restaurant">
			<a class = "search-btn" href = "#">
		<i class="fas fa-search"></i>
	</form>	
		</a>
	</div>
	

	<!-- <input type="text" placeholder="Search for a restaurant" id = "search"> -->
	
	
	<h2 id = "Looking">Looking around..</h2>
	<h3 id = "address">3201 S Hoover St, Los Angeles, CA 90089</h3>
	<h2 id = "Today"> Today's best deals</h2>
	
	<div class="scrolling-wrapper-flexbox" id = "bestDeals">
	  <div class = "wrap">
		  <div class="card">
		  	<img src = "web_images/mcd.jpg" alt = "mcd" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>McDonald's</b></h4>
		  		<p>Big Mac</p>
		  		<p>$4.99</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/chipotle.jpg" alt = "chipotle" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Chipotle</b></h4>
		  		<p>Burrito Bowl</p>
		  		<p>$7.59</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/ono.jpg" alt = "ono" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Ono's Hawaiian BBQ</b></h4>
		  		<p>Chicken BBQ Bowl</p>
		  		<p>$9.59</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/dulce.jpg" alt = "dulce" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Dulce Cafe</b></h4>
		  		<p>Donuts</p>
		  		<p>$6.99</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/honeybird.jpg" alt = "honeybird" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Honeybird</b></h4>
		  		<p>Medium Meal</p>
		  		<p>$11.99</p>
		  	</div>
		  </div>
		  
	  </div>
	</div>
	 
	<h2 id = "Popular"> Popular restaurants </h2>
	
	<div class="scrolling-wrapper-flexbox" id = "popularRestaurants">
	  <div class = "wrap">
		  <div class="card">
		  	<img src = "web_images/chickfila-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Chick-fil-A</b></h4>
		  		<p>3758 S Figueroa St</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/bakedbear-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Baked Bear</b></h4>
		  		<p>929 W Jefferson Blvd</p>
		  		<p>11PM-12AM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/panda-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Panda Express</b></h4>
		  		<p>3607 Trousdale Pkwy</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/lemonade-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Lemonade</b></h4>
		  		<p>3601 Trousdale Pkwy</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "web_images/cava-logo.jpg" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Cava</b></h4>
		  		<p>3201 S Hoover St</p>
		  		<p>11PM-12AM</p>
		  	</div>
		  </div>
		  
	  </div>
  </div>
	
  </body>
  
  <script type="text/javascript">
  
  function goHome(){
		window.location.replace("home.jsp");
	}
  
  </script>
</html>