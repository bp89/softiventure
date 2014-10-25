<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" 
           prefix="dec" %> --%>
           <%-- <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" 
           prefix="sitemesh" %> --%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%--  <title><dec:title default="Web Page" /></title> --%> 
 <title><sitemesh:write property='title' default="Web Page" /></title>
<sitemesh:write property='head'/>
<%-- <dec:head /> --%>

</head>
 
 <body>
 <jsp:include page="header.jsp"/>  
                    <sitemesh:write property='body'/> 
              <jsp:include page = "footer.jsp" />
                    
 </body>
</html>
