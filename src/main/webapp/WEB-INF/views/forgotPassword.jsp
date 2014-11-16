<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Forgot Password</title>
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

           
            <div class="modal-body">
                <form:form method="post" action="forgotPassword"	modelAttribute="users">
                    <div class="form-group">
                        <form:input path="username"  placeholder="Enter User Name" class="form-control input-lg" title="Please enter User Name." required=""/>
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" name="submit" value="Submit" class="btn btn-primary btn-lg btn-block" />
                    </div>
                </form:form>
            </div>
            
        </div>
    </div>
</div>
</body>
</html>