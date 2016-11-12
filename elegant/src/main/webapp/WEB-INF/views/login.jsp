<%@ include file="/WEB-INF/views/template/header.jsp" %>
<link rel="icon" href="resources/images/logo2.ico">

<div class="container-wrapper">
    <div class="container">
        <div id="login-box">
            <h2>Login with Username and Password</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>


            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="j_username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="j_password" class="form-control" />
                </div>
                <input type="submit" value="Login" class="btn btn-default">
            <input class="btn btn-warning btn-md"  name="reset" type="reset">
            </form>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
