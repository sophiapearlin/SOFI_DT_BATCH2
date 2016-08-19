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



  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="icon" type="image/jpg" href="resources/images/logo5.jpg" sizes="16x16"/>
 <title>Elegant Decoroid</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family:  "Times New Roman";
	font-size: 16px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color:	#fffacd;
}

.tg th {
	font-family:  "Times New Roman";
	font-size: 16px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color:	#cdb38b;
}


</style>
</head>
<body background="resources/images/sssss4.jpg">

<div class="container-fluid">
  		<div class="row">
    		<div class="row-sm-4">
    			<nav class="navbar navbar-inverse">
  					<div class="container-fluid">
   						 <div class="navbar-header">
     					 <a class="navbar-brand" href="#"><b>ElegantDecoroid:</b></a>
   						 </div>
   					 <ul class="nav navbar-nav">
    					<li class="active"><a href="userhome"><span class="glyphicon glyphicon-home"></span><b>HOME</b></a></li>

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




	
		<table class="tg" align="center" >
		<thead>
			<tr>
					<th colspan="8" width="200"><CENTER><b>PRODUCTS LIST</b></CENTER></th>
			</tr>		
			</thead><b>
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Details</th>
				<th width="60">Buy</th>
			</tr></b>
			<c:forEach items="${plist}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='productdetails/${product.id}' />">Details</a></td>
					<td><a href="#">Buy</a></td>
				</tr>
			</c:forEach>
		</table>
	 
</body>
</html>