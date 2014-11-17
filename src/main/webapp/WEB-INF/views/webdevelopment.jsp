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
<!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">

</br></br>
            </div>
        </div>
       <!--  /.row -->

        <!-- Image Header -->
        <div class="row">
            <div class="col-lg-12">
<img class="img-responsive" src="<c:url value = "/resources/images/professionals.jpg "/>" height = '1000' width =  '1500' alt="">

            </div>
        </div>
        <!-- /.row -->
        </div>
        <!-- /.container -->
        <div class="sblock">
<div class="container">
<div class="row">
            <div class="col-lg-12">

</br></br>
                
<h1>Web Development
               
                </h1>

                            </div>
        </div>
       <!--  /.row -->
       </div>
       <!-- /.container -->
</div>
<!-- /. sblock -->

                
<div class = "container">
        <!-- Service Tabs -->
        <div class="row">
            <div class="col-lg-12">
              
</br>
</br>

            </div>
            </div>
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
                    </br>
                        <h2>Grails</h2>
                    <jsp:include page="services/grails.jsp" />
                    </div>
                    <div class="tab-pane fade" id="Java">
                     </br>
                        <h2>Java</h2>
                        <jsp:include page="services/java.jsp" />  
                    </div>
                    
                </div> <!-- ./tab content -->

            </div>
</div><!-- ./row -->
        </div><!-- ./container -->

        

        <hr>

     <!-- jQuery Version 1.11.0 -->
    <script src="<c:url value="/resources/js/jquery-1.11.0.js"/>"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
   

</body>
</html>
