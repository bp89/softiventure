<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SoftIVenture</title>

</head>
<body>
 <!-- Navigation -->
   <!-- <nav class="navbar navbar-default navbar-fixed-top" role="navigation" width ='4000' height = '4000'> -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" >
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> 
             <a href='index.html'><img src="<c:url value = "/resources/images/logo.png"/>"
					alt='W3Schools.com' width='200' height='60' style='border: 0;'></a>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
<li>
                        <a href="#">Home</a>
                    </li>
<li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
<li>
                        <a href="#">Training</a>
                    </li>
 <li>
                        <a href="#">Blog</a>
                    </li>

                   
 <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    
                    <li>
                        <a href="contact.html">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
</br>
    </nav>
</body>
</html>