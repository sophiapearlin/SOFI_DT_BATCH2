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
	
  		<h1>Elegant Decoroid's User Page<p></h1>
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
    					
<li><A HREF="viewproducts"><b>VIEW PRODUCTS</b> </A></li> 
<li><A HREF="logout"><b>LOGOUT</b></A><li>
</ul>
<ul class="nav navbar-nav navbar-right">
 <li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Welcome User</a></li>
								</ul>
</div>
</nav>
</div>
</div>
</div>

      		<div class="row-sm-4">
				<div class="container-fluid">
					<div class="row text-center">
						<h2>Featured Looks of Decoroids </h2>
						<p>
						<h3>Make your Home Elegant and Alluring</h3>
						</p>
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/c11.jpg"
									alt=""></a>
								<p>
									<strong>CLOCKS</strong>
								</p>
								<p>Starting at Rs.500</p>
							<button class="btn">Great Savings</button>
								<p></p>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/p1.jpg"
									alt=""></a>
								<p>
									<strong>PAINTINGS</strong>
								</p>
								<p>Starting at Rs.499</p>
							<button class="btn">Explore Now</button>
								<p></p>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/p3.jpg"
									alt=""></a>
								<p>
									<strong>PHOTO FRAMES</strong>
								</p>
								<p>Starting at Rs.250</p>
							<button class="btn">Hurry</button>
								<p></p>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/sp12.jpg"
									alt=""></a>
								<p>
									<strong>SHOW PIECES</strong>
								</p>
								<p>Starting at Rs.357</p>
							<button class="btn">Discover Now</button>
								<p></p>
							</div>
						</div>
						
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/ws1.jpg"
									alt=""></a>
								<p>
									<strong>WALL SHELVES</strong>
								</p>
								<p>Starting at Rs.593</p>
							<button class="btn">Grab Now</button>
								<p></p>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="thumbnail">
								<a href="#"><img class="img-responsive" src="resources/images/wd2.jpg"
									alt=""></a>
								<p>
									<strong>WALL DECALS</strong>
								</p>
								<p>Starting at Rs.200</p>
							<button class="btn">Shop Now</button>
								<p></p>
							</div>
						</div>
						</div>
				</div>
			</div>
		</div>
</body>
</html>