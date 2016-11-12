<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<link rel="icon" href="resources/images/logo2.ico">

<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Roboto+Slab:300|Roboto|Allura);

body{
  background: #EEE;
}
body, input{
  font-family: "Roboto";
  font-size: 1em;
}
h1, .credit{
  font-family: "Roboto Slab";
}
.credit{
  text-align: center;
  font-size: 0.7em;
  padding: 10px;
}

.item{
  width: 60px;
  vertical-align: middle;
  margin-right: 15px;
}
.card .company{
  box-sizing: border-box;
  float: right;
}
.card{
  position: relative;
  perspective: 600px;
}
.card, .card .side{
  width: 350px;
  height: 200px;
}
.card .side{
  border-radius: 5px 5px;
  transition: all 0.4s linear;
  background: #333;
  color: #FFF;
  box-sizing: border-box;
  transform-style: preserve-3d;
  backface-visibility: hidden;
  position: absolute;
	top: 0;
	left: 0;
}
.card .front{
  padding: 10px;
  transform: rotateX(0deg) rotateY(0deg);
}
.card.flip .front{
  transform: rotateY(180deg);
}
.card .cc-num{
  width: 100%;
  padding-top: 100px;
}
.card input{
  outline: none;
  border: 0px solid;
  background: none;
  color: #FFF;
}
.card[data-type="visa"] input::-webkit-input-placeholder, .card[data-type="mastercard"] input::-webkit-input-placeholder{
  color: #DDD;
}
.card[data-type="visa"] input::-moz-placeholder, .card[data-type="mastercard"] input::-moz-placeholder{
  color: #DDD;
}
.card[data-type="visa"] input:-ms-placeholder, .card[data-type="mastercard"] input:-ms-placeholder{
  color: #DDD;
}
.card[data-type="visa"] .company{
  color: rgba(255,255,255,0.9);
font-style: italic;
text-shadow: 0px 0px 3px rgba(17,123,173,0.9);
}
.card[data-type="visa"] .side{
  background: #1db1cf;
}
.card[data-type="mastercard"] .side{
  background: #4d86ce;
}
.card[data-type="mastercard"] .company div{
  float: left;
width: 15px;
height: 15px;
border-radius: 10px;
background: rgba(239,209,57,0.8);
}
.card[data-type="mastercard"] .company div:first-child{
background: rgba(223,40,40,0.8);
margin-right: -5px;
}
.signature{
  background: #DDD;
  color: #000;
  padding: 10px;
}
.right{
  float: right;
}
.sig{
  font-family: "Allura";
}
.signature input.cc-cvc{
  color: #000;
  width: 40px;
}
.stripe{
  margin: 20px 0;
  height: 40px;
  background: #000;
}
.card .back{
  padding-top: 15px;
  transform: rotateY(-180deg);
}
.card.flip .back{
  transform: rotateX(0deg) rotateY(0deg);
}
.button{
  background: #0099CC;
  padding: 4px;
  color: #FFF;
  cursor: pointer;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 20px;
  border-radius: 5px 5px;
}
.button:hover{
  background: #33B5E5;
}
.checkout{
  margin: 0 auto;
  width: 350px;
}
.addr input{
  width: 100%;
  outline: none;
  border: 0px solid;
  padding: 5px;
}

 </style>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 <script>
 $('input.cc-num').payment('formatCardNumber').on("keyup change", function(){
	  var type = $.payment.cardType( $(this).val() );
	  if(type == "visa"){
	    $(".company").html("VISA");
	    $(".card").attr("data-type", "visa");
	  } else if(type == "mastercard"){
	    $(".company").html("<div></div><div></div>");
	    $(".card").attr("data-type", "mastercard");
	  }else{
	    $(".card").attr("data-type", "unknown");
	    $(".company").html("CARD");
	  }
	});
	$('input.cc-exp').payment('formatCardExpiry');
	$('input.cc-cvc').payment('formatCardCVC');
	$(".button.flip").click(function(){
	  $(".card").toggleClass("flip");
	});
	
 </script>
 </head>
</head>


<jsp:useBean id="now" class="java.util.Date" />

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">
                
                <div class="checkout">
  <h1>Payment</h1>
  <p>Enter the card details or pay the cash on delivery</p>

  <div class="card">
    <div class="front side">
      <span class="company">
        CARD
      </span>
      PAYMENT CARD
      <input type="text" placeholder="Card number" class="cc-num" />
      <div>
        Expires:
        <input type="text" placeholder="MM/YY" class="cc-exp" />
      </div>
      <span class="right">
        CVC: <input type="text" placeholder="****" class="cc-cvc" maxlength="4" />
        </span>
    </div>
    <div class="back side">
      <div class="stripe"></div>
      <div class="signature">
        <span class="right">
        CVC: <input type="text" placeholder="000" class="cc-cvc" maxlength="4" />
        </span>
        <span class="sig">
          our lovely customer
        </span>
      </div>
    </div>
  </div>
  
 </div>

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1>Receipt</h1>
                       </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br/>
                                    ${order.cart.customer.shippingAddress.streetName}
                                <br/>
                                    ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                <br/>
                                     ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br/>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br/>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br/>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                </address>
                                
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <th class="col-md-9"><em>${cartItem.product.productName}</em></th>
                                        <th class="col-md-1" style="text-align: center">${cartItem.quantity}</th>
                                        <th class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</th>
                                        <th class="col-md-1" style="text-align: center">${cartItem.totalPrice}</th>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </th>
                                    <th class="text-center text-danger">
                                        <h4><strong>Rs ${order.cart.grandTotal}</strong></h4>
                                    </th>
                                </tr>

                                </tbody>
                            </table>
                        </div>


                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>

                        <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                    </div>
                </form:form>
            </div>
        </div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>