<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page">
<nav class="colorlib-nav" role="navigation">
        <div class="top-menu">
                <div class="container-fluid">
                        <div class="row">
                                <div class="col-xs-2">
                                        <div id="colorlib-logo"><a href="index.html">Tour</a></div>
                                </div>
                                <div class="col-xs-10 text-right menu-1">
                                        <ul>
                                                <li class="active"><a href="index.html">Home</a></li>
                                                <li class="has-dropdown">
                                                        <a href="tour">Tours</a>
                                                        <ul class="dropdown">
                                                                <li><a href="#">Destination</a></li>
                                                                <li><a href="#">Cruises</a></li>
                                                                <li><a href="#">Hotels</a></li>
                                                                <li><a href="#">Booking</a></li>
                                                        </ul>
                                                </li>
                                                <li><a href="#">Hotels</a></li>
                                                <li><a href="#">Blog</a></li>
                                                <li><a href="#">About</a></li>
                                                <li><a href="#">Contact</a></li>
                                                <li><a href="<c:url value="login" />">Sign up</a></li>

                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</nav>
<aside id="colorlib-hero">
        <div class="flexslider">
                <ul class="slides">
                <li style="background-image: url(template/images/img_bg_1.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                                <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                                <div class="slider-text-inner text-center">
                                                        <h2>2 Days Tour</h2>
                                                        <h1>Amazing Maldives Tour</h1>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </li>
                <li style="background-image: url(template/images/img_bg_2.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                                <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                                <div class="slider-text-inner text-center">
                                                        <h2>10 Days Cruises</h2>
                                                        <h1>From Greece to Spain</h1>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </li>
                <li style="background-image: url(template/images/img_bg_5.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluids">
                                <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                                <div class="slider-text-inner text-center">
                                                        <h2>Explore our most tavel agency</h2>
                                                        <h1>Our Travel Agency</h1>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </li>
                <li style="background-image: url(template/images/img_bg_4.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                                <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                                <div class="slider-text-inner text-center">
                                                        <h2>Experience the</h2>
                                                        <h1>Best Trip Ever</h1>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </li>	   	
                </ul>
        </div>
</aside>

</div>
