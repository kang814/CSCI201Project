<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="home.css">
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title> nibble </title>
  </head>
  <body>
  
  	<div id="header">
		<h1 id="nibble" onclick="goHome()">nibble.</h1>
		<button class="topButton" id = "profile" onclick= "location.href='profile.jsp'">Profile</button>
		<button class="topButton" id = "cart" onclick="location.href='cart.jsp'">Cart</button>
			
	</div>
  
	<h1 id = "What">What's your midnight snack today?</h1>
	
	<div class = "search-box">
		<input class = "search-txt" type = "text" name = "" placeholder ="search for a restaurant">
		<a class = "search-btn" href = "#">
	<i class="fas fa-search"></i>
		
		</a>
	</div>
	<!-- <input type="text" placeholder="Search for a restaurant" id = "search"> -->
	
	
	<h2 id = "Looking">Looking around..</h2>
	<h3 id = "address">3201 S Hoover St, Los Angeles, CA 90089</h3>
	<h2 id = "Today"> Today's best deals</h2>
	
	<div class="scrolling-wrapper-flexbox" id = "bestDeals">
	  <div class = "wrap">
		  <div class="card">
		  	<img src = "mcd.jpg" alt = "mcd" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>McDonald's</b></h4>
		  		<p>Big Mac</p>
		  		<p>$4.99</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "chipotle.jpg" alt = "chipotle" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Chipotle</b></h4>
		  		<p>Burrito Bowl</p>
		  		<p>$7.59</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "ono.jpg" alt = "ono" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Ono's Hawaiian BBQ</b></h4>
		  		<p>Chicken BBQ Bowl</p>
		  		<p>$9.59</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "dulce.jpg" alt = "dulce" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Dulce Cafe</b></h4>
		  		<p>Donuts</p>
		  		<p>$6.99</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "honeybird.jpg" alt = "honeybird" style ="width:100%">
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
		  	<img src = "chickfila-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Chick-fil-A</b></h4>
		  		<p>3758 S Figueroa St</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "bakedbear-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Baked Bear</b></h4>
		  		<p>929 W Jefferson Blvd</p>
		  		<p>11PM-12AM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "panda-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Panda Express</b></h4>
		  		<p>3607 Trousdale Pkwy</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "lemonade-logo.png" style ="width:100%">
		  	<div class = "container">
		  		<h4><b>Lemonade</b></h4>
		  		<p>3601 Trousdale Pkwy</p>
		  		<p>10-11PM</p>
		  	</div>
		  </div>
		  
		  <div class="card">
		  	<img src = "cava-logo.jpg" style ="width:100%">
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