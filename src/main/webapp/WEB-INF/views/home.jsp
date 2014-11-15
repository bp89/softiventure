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
 <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
             <img src="<c:url value = "/resources/images/professionals.jpg "/>" alt="First slide" height = '1200' width =  '1500'> 
            
            </div>
            <div class="item">
                <img src="<c:url value = "/resources/images/professionals.jpg "/>" alt="First slide" height = '1200' width =  '1500'> 
                         </div>
            <div class="item">
                <img src="<c:url value = "/resources/images/professionals.jpg "/>" alt="First slide" height = '1200' width =  '1500'> 
                          </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>


      <!-- Services Section -->
         <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">

                    <h2 class="section-heading">Our Services</h2>
                    <br>
                   <!--  <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>  -->
                </div>
      </div> <!-- row -->
            <div class="row text-left">
                <div class="col-md-3">
                    <span class="fa-stack fa-4x ">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-desktop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Web Development</h4>
                    <p class="text-muted text-left">With a robust, affordable website designed, developed and supported by SoftIVenture, you'll swing the competitive edge in your direction when it comes to getting the word out about your business.<a href="webdevelopment">Read More</a>
                    </p>
                </div>
<div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-tablet fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Mobile Apps</h4>
                    <p class="text-muted text-left">Our Mobile Application Development  team specialize in building Native , Cross Compiled and lightweight Android applications, spanning the breadth of modern application development.</br><a href="mobileapps">Read More</a></p>
                </div>
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Hosting And Support</h4>
                    <p class="text-muted text-left">With hosting your site and supporting you by assistance in day to day activity or future maintenance, We'll let you focus on your Core business.</br><a href="mobileapps">Read More</a></p>
                </div>
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-users fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Professional Training</h4>
                    <p class="text-muted text-left">Get trained with us in most demanding and latest technologies like Java,J2EE,Android,IOS,Web Services together with Professional skills development. <a href="training">Read More</a></p>
                </div>
            </div> <!-- / .row text center -->


        </div> <!-- / .Container -->
    </section>


<!-- About Section -->


<section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About Us</h2>
                    </br>
                  <!--  <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> -->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="<c:url value = "/resources/images/about/1.jpg "/>" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                   
                                    <h4 class="subheading">Development</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Soft I Venture is a leading custom software solutions team with focus on providing development services using latest innovative technologies effectively.</br> 
We deliver significant value to our customers by providing cutting edge technology solutions, project management expertise, analysis of projects at business & commercial level and above all a strong code of ethics & an unwavering commitment towards customer excellence.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="<c:url value = "/resources/images/about/2.jpg "/>" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                  
                                    <h4 class="subheading">Training</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Besides development We are also expertise to train individuals to get placed .</br>The training at Soft I Venture is provided by a team of trainers who have master's and post-graduate qualification and impart the best training. They are well conversant with the recent industrial knowledge. So, the training imparts give a better quality to the students of Soft I Venture.</p>
                                </div>
                            </div>
                        </li>
                                             <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                                    <br>Of Our
                                    <br>Organization!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div><!-- row -->
        </div> <!-- /container -->
    </section>
    
     <!-- Script to Activate the Carousel -->
     <!-- jQuery Version 1.11.0 -->
    <script src="<c:url value="/resources/js/jquery-1.11.0.js"/>"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
</body>
</html>
