<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Login</title>
<style type="text/css">

</style>
</head>
<body >
<div class="jumbotron">
    <div class="container-fluid">
        <h2><img
				src="<c:url value = "/resources/images/logo.png"/>"
				alt='SoftIventure' width='200' height='60' style='border: 0;'></h2>
        <h6>Think Innovation.</h6>
    </div>
</div>
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="text-center"><img
				src="<c:url value = "/resources/images/logo.png"/>"
				alt='SoftIventure' width='200' height='60' style='border: 0;'></h1>
            </div>

            <div class="container">
                <span style="font-size: smaller;color: #116644">${flash.logoutMessage}</span>
              <%--   <span style="font-size: smaller;color: #116644">${flash.invalidLogin}</span> --%>
                <span style="font-size: smaller;color: #116644">${message}</span>
                <div class="row">
                    <div class="span4">
                    </div>
                </div>
            </div>
            <div class="modal-body">
                <form:form method="post" action="j_spring_security_check"	modelAttribute="users">
                    <div class="form-group">
                        <form:input path="username"  placeholder="User Name" class="form-control input-lg" title="Please enter User Name." required=""/>
                    </div>
                    <div class="form-group">
                        <form:password path="password" placeholder="Password" class="form-control input-lg" title="Please enter Password." />
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="${rememberMeParameter}" value="remember"/>
                        <label for="rememberMe">Remember Me?</label>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" value="Sign In" class="btn btn-primary btn-lg btn-block" />
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>