<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="icon" type="image/jpg" href="resources/images/logo5.jpg" sizes="16x16"/>
 <title>Elegant Decoroid</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 body {
	/*background-color:#ffffff;*/
    background:-webkit-radial-gradient(	#d4d4d4,	#ffe7ba ,	#fa8072);/*Safari 5.1 to 6.0 */
}
  .jumbotron {
    background-color:#000000;
	 
	padding:20px;
    color:#cd3333;
}
</style>
</head>
<body>
<div class="jumbotron text-center">
    
	<div class="row">
    		<div class="col-sm-3"></div>
			<div class="col-sm-1">
			<a href="#"><img class="img-rounded pull-right" src="resources/images/logo5.jpg"
								alt="logo" width="150" height="150" ></a>
								</div>
	<div class="col-sm-5">							
	
  		<h1>Elegant Decoroid's Admin Page<p></h1>
 		</div></div>
		 <div class="col-sm-3"></div>
		 </div></div></div>
		 
		 
	<div class="container-fluid">
  		<div class="row">
    		<div class="row-sm-4">
    			<nav class="navbar navbar-inverse">
  					<div class="container-fluid">
   						 <div class="navbar-header">
     					 <a class="navbar-brand" href="#"><b>ElegantDecoroid:</b></a>
   						 </div>
   					 <ul class="nav navbar-nav">
    					<li class="active"><a href="categories"><b>CATEGORIES</b></a></li>
    	<li><A HREF="suppliers"><b>SUPPLIERS</b> </A></li> 				
<li><A HREF="products"><b>PRODUCTS</b> </A></li> 
<li><A HREF="logout"><b>LOGOUT</b></A><li>
</ul>
</div>
</nav>
</div>
</div>
</div>
<div class="container-fluid"> 
  <div class="row">
    <div class="row-sm-4">
   <br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					
					
				</ol>

				<!-- Wrapper for slides -->

				<div class="carousel-inner" role="listbox">
					<div class="item active"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/q1.jpg"
							alt="walldecals" ></a></center>
							<div class="carousel-caption">
        <h3>Decor Unlimited</h3>
        <p>Unlimited Choices, Unbeatable Prices, Free Shipping</p>
      </div>
					</div>

					<div class="item"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/q5.jpg"
							alt="wallshelves"></a></center>
							<div class="carousel-caption">
        <h3>Monsoon Sale</h3>
        <p>Shop with Trending Themes</p>
      </div>
					</div>
					
					<div class="item"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/q7.jpg"
							alt="wallshelves"></a></center>
							<div class="carousel-caption">
        <h3>Exclusive Collections</h3>
        <p>It's Raining Creativity, Soak Your Walls, Shop Now</p>
      </div>
					</div>
					
					<div class="item"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/q12.jpg"
							alt="wallshelves"></a></center>
							<div class="carousel-caption">
        <h3>Assorted Range of Decors</h3>
        <p>Redecorate Your Home For 2017</p>
      </div>
					</div>
					
  
    			</div>

  		</div>
	</div>
	</div>
</body>
</html>