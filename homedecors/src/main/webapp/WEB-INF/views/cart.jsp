<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="icon" type="image/jpg" href="../resources/images/logo5.jpg" sizes="16x16"/>
 <title>Elegant Decoroid</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.right {
    background:#d9edf7;
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
    -ms-text-overflow:ellipsis;
    float: right;
}
#Table-box {
	width: 800px;
	padding: 20px;
	margin: 100px auto;
	border: 1px solid transparent;
	border-radius: 4px;
	color: 	#000000;
	background: #fffacd;
	border-color: #bce8f1;
	border: 1px solid #31708f;
}
.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: 	#000000;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
#myDiv{
	background-color: #d9edf7;
	border-color: #bce8f1;
	width: 200px;
	
}
.btn {
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}
</style>
</head>
<body background="../resources/images/sssss4.jpg">
<center>

<div id="Table-box">

<h1>Your Cart</h1>


<h2> Item Saved in Cart</h2>
<table border='1.5' width='600' cellpadding='1' cellspacing='1'>
	<tr>   
		<th>ProductName</th>
		<th>ProductPrice</th>
		<th>ProductImage</th>
	</tr>
	<tbody>
	
	<c:if test="${!empty selectedProduct.name}">
			<tr>
				<td><c:out value="${selectedProduct.name}" /></td>
				<td><c:out value="${selectedProduct.price}" /></td>
				<td><center><img class="img-rounded pull-left" class="thumbnail" src="../resources/images/${selectedProduct.id}.jpg"  height="100" width="100" alt="image name ${selectedProduct.id}"></center></td>
			</tr> 
	</c:if>
	<tr>
		<td> </td>
		<td>Amount payable</td>
		<td><c:out value="${selectedProduct.price}"/></td>
	<tr>
	</tbody>

</table>


</center>

</div>
<center>
<a href="../logout"><button class="btn">Log Out</button></a>
</center>


</body>
</html>