<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>LoginWithCaptcha</title>
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
              <%--   <span style="font-size: smaller;color: #116644">${flash.logoutMessage}</span> --%>
              <%--   <span style="font-size: smaller;color: #116644">${flash.invalidLogin}</span> --%>
               <%--  <% int val = ${message}.intValue(); %> --%>
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
                   <%--  <%
                    /* String count =(String)session.getAttribute("counter");
                    int counter = Integer.parseInt(count); */
                    int counter =(int)session.getAttribute("counter");
                
                    if(counter>2)
                    	%> --%>
                    <div class="form-group">
        
        <table bgcolor="" align="center">

<tr> <td align="center" colspan="2"><jsp:include page="rndExp.jsp" /><br><br>

</td>
<td></td>
<td align="center"><form:input path="captchaCode"  placeholder="Code"  class="form-control input-md" title="Please enter Code." required=""/>
</td></tr>
<!-- <input name="number" type="text"> -->

</table>
         </div>  
                    <div class="form-group">
                        <%-- <input type="checkbox" name="${rememberMeParameter}" value="remember"/> --%>
          <!--               <label for="rememberMe">Remember Me?</label> -->
                       <input id="remember_me" name="_spring_security_remember_me" type="checkbox"/>
                        <label for="remember_me">Remember me?</label>
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" name="submit" value="Sign In" class="btn btn-primary btn-lg btn-block" />
                    </div>
                </form:form>
            </div>
             <div class="span">
           <centre> <a href = "forgotPassword">Forgot Password ?</a></centre>
            </div>
          
          <%--   <jsp:include page="form.jsp"></jsp:include> --%>
         
        </div>
    </div>
</div>
</body>
</html>