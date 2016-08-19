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

</head>
<body background="../resources/images/sssss4.jpg">
<div class="container-fluid">
  		<div class="row">
    		<div class="row-sm-4">
    			<nav class="navbar navbar-inverse">
  					<div class="container-fluid">
   						 <div class="navbar-header">
     					 <a class="navbar-brand" href="#"><b>ElegantDecoroid:</b></a>
   						 </div>
   					 <ul class="nav navbar-nav">
    					<li class="active"><a href="../userhome"><span class="glyphicon glyphicon-home"></span><b>HOME</b></a></li>

<li><A HREF="../logout"><b>LOGOUT</b></A><li>
</ul>
<ul class="nav navbar-nav navbar-right">
 <li><a href="#"><span class="glyphicon glyphicon-user"></span>
								${selectedUser_Details.name}</a></li>
								</ul>
</div>
</nav>
</div>
</div>
</div>

<div class="container-fluid">
 <div class="row">
 <div class="col-sm-2" > </div>
 <div>
<img class="img-rounded pull-left" class="thumbnail" src="../resources/images/${selectedProduct.id}.jpg"  height="500" width="350" alt="image name ${selectedProduct.id}"><br/>

</div>
<div class="col-sm-2"></div>
<div class="pull-left">
<br/>
		<c:if test="${!empty selectedProduct.name}">
			<table>
			<thead>
			<tr>
					<th align="center" width="200">PRODUCT DETAILS</th>
			</tr>		
			</thead>
			<tbody>
				<tr>
					<th align="left" width="200">Product ID</th>
					<td align="left" >${selectedProduct.id}</td>
					
					</tr>
					<tr>
					<th align="left" width="200">Product Name</th>
					<td align="left" >${selectedProduct.name}</td>
					</tr>
					
					<tr>
					<th align="left" width="200">Product Description</th>
					<td align="left" >${selectedProduct.description}</td>
					</tr>
					
					<tr>
					<th align="left" width="200">Price</th>
					<td align="left" >${selectedProduct.price}</td>
					</tr>
					
							</tbody>
			</table>
					<br>
					<hr>
					<br>
			<table >
			<thead>
			<tr>
					<th align="center" width="200">CATEGORY DETAILS</th>
			</tr>		
			</thead>
			<tbody>
				<tr>
					<th align="left" width="200">Product Category</th>
					<td align="left" >${selectedProduct.category.name}</td>
					
				</tr>
				<tr>
					<th align="left" width="200">Category ID</th>
					<td align="left" >${selectedProduct.category.id}</td>
					
				</tr>
				<tr>
					<th align="left" width="200">Category Description</th>
					<td align="left" >${selectedProduct.category.description}</td>
					
				</tr>
							</tbody>
			</table>
			<br>
					<hr>
					<br>
			<table>
			<thead>
			<tr>
					<th align="center" width="200">SUPPLIER DETAILS</th>
			</tr>		
			</thead>
			<tbody>
					
					
					
					<tr>
					<th align="left" width="200">Product Supplier</th>
					<td align="left" >${selectedProduct.supplier.name}</td>
				   </tr>
				   <tr>
					<th align="left" width="200">Supplier ID</th>
					<td align="left" >${selectedProduct.supplier.id}</td>
				   </tr>
				   <tr>
					<th align="left" width="200">Supplier Address</th>
					<td align="left" >${selectedProduct.supplier.address}</td>
				   </tr>
					</tbody>
			</table>
		</c:if>
	</div>
	<div class="col-sm-2"></div>
	</div></div>
</body>
</html>