<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><sitemesh:write property='title' default="Web Page" /></title>
<%-- <dec:head /> --%>
<!-- Bootstrap Core CSS -->
<link href="<c:url value = "/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value = "/resources/css/modern-business.css"/>"
	rel="stylesheet">
<!-- Custom Fonts -->
<link
	href="<c:url value = "/resources/font-awesome-4.1.0/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<STYLE>
.nav>li {
	text-transform: uppercase;
	font-weight: bold;
	font-family: sans-serif;
}
body{
background: url("/resources/images/slide4_bg.jpg");
}
</STYLE>
</head>

<body>
	<sitemesh:write property='body' />
</body>

</html>
