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
</head>
<body>

<div class="container-fluid">
    <div class="jumbotron">
        <h1>Web Development</h1>
        <h5>We are agile. We use iterative development strategy where teams work in sprints. Each sprint is highly organised. This boosts the development process by 40%.And the project quality is the best in class as we adhere to industry standards.</h5>
    </div>
    <!--  /.row -->
</div>
<!-- /.container -->

<div class = "container-fluid">

    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">

            <ul id="myTab" class="nav nav-tabs nav-justified">
                <li class="active"><a href="#Grails" data-toggle="tab"><img src="<c:url value = "/resources/images/grails.jpg "/>"  alt="">
                </a>
                </li>
                <li class=""><a href="#Java" data-toggle="tab"><img src="<c:url value = "/resources/images/java.jpg "/>" alt=""></a>
                </li>
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="Grails">
                    <h2>Grails</h2>
                    <p class = "tabp"> <%@include file="services/grails.jsp"%> </p>
                </div>
                <div class="tab-pane fade" id="Java">
                    <h2>Java</h2>
                    <p class = "tabp"><%@include file="services/java.jsp"%></p>
                </div>
            </div> <!-- ./tab content -->

        </div>
    </div><!-- ./row -->
</div><!-- ./container -->
<hr>
<!-- Script to Activate the Carousel -->
<!-- jQuery Version 1.11.0 -->
<script src="<c:url value="/resources/js/jquery-1.11.0.js"/>"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</body>
</html>
