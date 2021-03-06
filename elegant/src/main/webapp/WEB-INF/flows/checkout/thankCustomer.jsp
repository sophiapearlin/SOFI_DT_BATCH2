<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<link rel="icon" href="resources/images/logo2.ico">


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be shipped in two business days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-default">OK</a></p>
        </section>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>