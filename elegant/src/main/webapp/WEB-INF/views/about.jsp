 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<link rel="icon" href="resources/images/logo2.ico">


<html lang="en">
<head>
<title>Welcome To T-Trendz</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="text/css">
 <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Traditional<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="fancy"> Fancy Sarees</a></li>
          <li><a href="silk">Handloom Silk Sarees</a></li>
          <li><a href="cotton">Cotton Sarees</a></li>
        </ul>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Ethnic Wear<span class="caret"></span></a>
<ul class="dropdown-menu">
          <li><a href="salwar">Salwars</a></li>
          <li><a href="legenhas">Legenhas</a></li>
</ul>

<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Western Wear<span class="caret"></span></a>
<ul class="dropdown-menu">
          <li><a href="moderndress">Modern Dresses</a></li>
          <li><a href="party">Party Wear</a></li>
  <li><a href="#">Shirts</a></li>
</ul>

<li class=""><a href="about">About Us</a></li>

</ul>



          
       
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  

<div class="container-wrapper">
    <div class="container">

        <div class="page-header">
            <h1>About Us</h1>
            <p>We are a humble team who are passionate about helping our customers to get the best choice of costumes and stuff.
            We are determined to provide the best products and variety categories.</p>
        </div>

        <img src="<c:url value="/resources/images/cutefashion.jpg" />" alt="cutefashion">
</div>
</div>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>