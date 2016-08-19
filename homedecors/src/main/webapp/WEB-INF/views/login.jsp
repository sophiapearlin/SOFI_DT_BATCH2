<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <link rel="icon" type="image/jpg" href="resources/images/logo5.jpg" sizes="16x16"/>
 <title>Elegant Decoroid</title>
  </head>


    <body  background="resources/images/sssss4.jpg">
    <center>
    <div class="container-fluid">
    <br>
    <br>
    <center>    <h1 id="banner">Welcome to ElegantDecoroids.com</h1> </center>  
    <div class="row"  >
<div class="col-sm-4"></div> 
<div class="col-sm-4" style="background-color:	#ffefd5; box-shadow: 20px 20px 10px grey;"">

<center><h3><center><b>Member Login</b></h3></center>
<br><br>
        <form class="form-signin" name="f" action="<c:url value='j_spring_security_check'/>"
                    method="POST">
                   
                    
            <table  bgcolor="#00cdcd"  width="50" >
                <tr>
                    <td><h4><label for="username">Username:</label></h4></td>
                    <td><input type='text' placeholder="Enter User Name" name='j_username' required/></td>
                </tr>
                <tr>
                   <td><h4><label for="password">Password:</label></h4></td>
                    <td><input type='password' placeholder="Enter Password" name='j_password' required></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td ></td><td><center><input type="submit" class="btn  btn-md" style= "background-color:	#cd853f;color:white" value="Login"> &nbsp;&nbsp;<input class="btn  btn-md" style= "background-color:	#cd853f;color:white"  name="reset" type="reset"></center></td>
                </tr>
                <tr></tr>
                <tr><td><a href="home">Back to Home</a></td></tr>
            </table><br/><br/>
           <p>  
      </p>
        </form>
        </div></div></div>
        </center>
    </body>
</html>