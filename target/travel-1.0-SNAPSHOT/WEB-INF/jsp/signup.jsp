    <%-- 
    Document   : signup
    Created on : 14 Sep 2021, 20:36:30
    Author     : trang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Animate.css -->
	<link rel="stylesheet" href="template/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="template/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="template/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="template/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="template/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="template/css/owl.carousel.min.css">
	<link rel="stylesheet" href="template/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="template/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="template/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="template/css/style.css">

	<!-- Modernizr JS -->
	<script src="template/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<c:url value="/signup" var="action"/>
<form:form method="POST" action="${action}" modelAttribute="signup" 
           enctype="multipart/form-data">
    <div class="form-group" >
        <label for="file"> Anh tour</label>
        <form:input type="file" id="file" path="file" cssClass="form-control"/>
    </div>
    <div class="form-group" >
        <input type="submit" value="Thêm tour" class="btn btn-danger"/>
    </div>
</form:form>




<!-- jQuery -->
	<script src="template/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="template/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="template/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="template/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="template/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="template/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="template/js/jquery.magnific-popup.min.js"></script>
	<script src="template/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="template/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="template/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="template/js/main.js"></script>
