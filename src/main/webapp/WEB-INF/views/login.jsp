<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<html>
<head>
<title>Login Page</title>


</head>

<body>
<div>
<h2>Signin </h2>

  <c:if test="${param.login_error !=null}">
            <div style="color:red">
                Your fake login attempt was bursted, dare again !!<br /> 
                
            </div>
        </c:if>
     

<s:url var="authUrl" value="j_spring_security_check"/>

<form method="post" class="signin" action="${authUrl}">

<fieldset>
<table cellspacing="0">
<tr>
<th><label for="user">User</label></th>
<td><input id="user" name="j_username" type="text" />
</td>
</tr>
<tr>
<th><label for="password">Password</label></th>
<td><input id="password" name="j_password" type="password" />

</td>
</tr>
<tr>
<th></th>
<td><input id="remember_me" name="_spring_security_remember_me" type="checkbox"/>
<label for="remember_me" class="inline">Remember me</label></td>
</tr>

<th></th>
<td><input name="commit" type="submit" value="SignIn"/></td>
</tr>
</table>
</fieldset>
</form>

<script type="text/javascript">
document.getElementById('user').focus();
</script>

</div>
</body>

</html>
