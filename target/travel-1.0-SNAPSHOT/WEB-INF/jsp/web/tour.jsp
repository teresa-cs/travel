<%-- 
    Document   : tour
    Created on : 11 Sep 2021, 15:01:23
    Author     : trang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Tour Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

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
        <!--[if lt IE 9]-->
        <script src="template/js/respond.min.js"></script>
        <!--[endif]-->

    </head>
    <body>
        
        <div id="colorlib-reservation">
        <!-- <div class="container"> -->
        <div class="row">
            <div class="search-wrap">
                <div class="container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#flight"><i class="flaticon-boat"></i>Tour</a></li>
                        <li><a data-toggle="tab" href="#hotel"><i class="flaticon-resort"></i> Hotel</a></li>

                    </ul>
                </div>
                <div class="tab-content">
                    <div id="flight" class="tab-pane fade in active">
                        <form action="" class="colorlib-form">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="booknow">
                                        <h2>Book Now</h2>
                                        <span>Best Price Online</span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="date">Where:</label>
                                        <div class="form-field">
                                            <input type="text" id="location" name="kw" class="form-control" placeholder="Search Location">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" value="Find Tours"  class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="hotel" class="tab-pane fade">
                        <form method="post" class="colorlib-form">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="booknow">
                                        <h2>Book Now</h2>
                                        <span>Best Price Online</span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="date">Check-in:</label>
                                        <div class="form-field">
                                            <i class="icon icon-calendar2"></i>
                                            <input type="text" id="date" class="form-control date" placeholder="Check-in date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="date">Check-out:</label>
                                        <div class="form-field">
                                            <i class="icon icon-calendar2"></i>
                                            <input type="text" id="date" class="form-control date" placeholder="Check-out date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="guests">Guest</label>
                                        <div class="form-field">
                                            <i class="icon icon-arrow-down3"></i>
                                            <select name="people" id="people" class="form-control">
                                                <option value="#">1</option>
                                                <option value="#">2</option>
                                                <option value="#">3</option>
                                                <option value="#">4</option>
                                                <option value="#">5+</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" name="submit" id="submit" value="Find Hotel" class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="car" class="tab-pane fade">
                        <form method="post" class="colorlib-form">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="date">Where:</label>
                                        <div class="form-field">
                                            <input type="text" id="location" class="form-control" placeholder="Search Location">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="date">Start Date:</label>
                                        <div class="form-field">
                                            <i class="icon icon-calendar2"></i>
                                            <input type="text" id="date" class="form-control date" placeholder="Check-in date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="date">Return Date:</label>
                                        <div class="form-field">
                                            <i class="icon icon-calendar2"></i>
                                            <input type="text" id="date" class="form-control date" placeholder="Check-out date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" name="submit" id="submit" value="Find Car" class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="cruises" class="tab-pane fade">
                        <form method="post" class="colorlib-form">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="date">Where:</label>
                                        <div class="form-field">
                                            <input type="text" id="location" class="form-control" placeholder="Search Location">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="date">Start Date:</label>
                                        <div class="form-field">
                                            <i class="icon icon-calendar2"></i>
                                            <input type="text" id="date" class="form-control date" placeholder="Check-in date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="guests">Categories</label>
                                        <div class="form-field">
                                            <i class="icon icon-arrow-down3"></i>
                                            <select name="category" id="category" class="form-control">
                                                <option value="#">Suite</option>
                                                <option value="#">Super Deluxe</option>
                                                <option value="#">Balcony</option>
                                                <option value="#">Economy</option>
                                                <option value="#">Luxury</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" name="submit" id="submit" value="Find Cruises" class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="colorlib-loader"></div>

            <div class="colorlib-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="row">
                                <div class="wrap-division">
                                    <c:forEach var="t" items="${tour}" >
                                        <div class="col-md-6 col-sm-6 animate-box">


                                            <div class="tour">
                                                <a href="<c:url value="/tour/tour-${t.id}"/>" class="tour-img" style="background-image: url(template/images/tour-1.jpg);">
                                                    <p class="price"><span>${t.price}$</span> <small>/ ${t.days} days</small></p>
                                                </a>

                                                <span class="desc">
                                                    <p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
                                                    <h2><a>${t.name}</a></h2>
                                                    <span class="city">${t.idPlace.name}</span>
                                                </span>
                                            </div>

                                        </div> 
                                    </c:forEach>


                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">

                                    <ul class="pagination">
                                        <c:forEach begin="1" end="${Math.ceil(counter/4)}" var="i">   
                                            <li class="active"><a class="page-link" href="<c:url value="/tour"/>?page=${i}">${i}</a></li>                                            
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- SIDEBAR-->
                        <div class="col-md-3">
                            <div class="sidebar-wrap">
                                <div class="side search-wrap animate-box">
                                    <h3 class="sidebar-heading">Find your tour</h3>
                                    <form method="post" class="colorlib-form">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">${detail}</label>
                                                    <div class="form-field">
                                                        <input type="text" id="location" class="form-control" placeholder="Search Location">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">Check-in:</label>
                                                    <div class="form-field">
                                                        <i class="icon icon-calendar2"></i>
                                                        <input type="text" id="date" class="form-control date" placeholder="Check-in date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">Check-out:</label>
                                                    <div class="form-field">
                                                        <i class="icon icon-calendar2"></i>
                                                        <input type="text" id="date" class="form-control date" placeholder="Check-out date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="guests">Guest</label>
                                                    <div class="form-field">
                                                        <i class="icon icon-arrow-down3"></i>
                                                        <select name="people" id="people" class="form-control">
                                                            <option value="#">1</option>
                                                            <option value="#">2</option>
                                                            <option value="#">3</option>
                                                            <option value="#">4</option>
                                                            <option value="#">5+</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <input type="submit" name="submit" id="submit" value="Find Flights" class="btn btn-primary btn-block">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="side animate-box">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3 class="sidebar-heading">Price Range</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="guests">Price from:</label>
                                                            <div class="form-field">
                                                                <i class="icon icon-arrow-down3"></i>
                                                                <select name="people" id="people" class="form-control">
                                                                    <option value="#">1</option>
                                                                    <option value="#">200</option>
                                                                    <option value="#">300</option>
                                                                    <option value="#">400</option>
                                                                    <option value="#">1000</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="guests">Price to:</label>
                                                            <div class="form-field">
                                                                <i class="icon icon-arrow-down3"></i>
                                                                <select name="people" id="people" class="form-control">
                                                                    <option value="#">2000</option>
                                                                    <option value="#">4000</option>
                                                                    <option value="#">6000</option>
                                                                    <option value="#">8000</option>
                                                                    <option value="#">10000</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="side animate-box">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3 class="sidebar-heading">Review Rating</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="side animate-box">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3 class="sidebar-heading">Location</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Greece</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Italy</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Spain</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Germany</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Japan</h4>
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>


