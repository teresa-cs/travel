<%-- 
    Document   : hotel
    Created on : 25 Sep 2021, 21:51:46
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
        <!--[if lt IE 9]>
        <script src="template/js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <div class="colorlib-loader"></div>
        
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

        <div id="page">
            <div class="colorlib-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="row">
                                <div class="wrap-division">
                                    <c:forEach var="t" items="${hotel}" >
                                        <div class="col-md-6 animate-box" >
                                            <div class="hotel-entry">
                                                <a href="<c:url value="/hotel/hotel-${t.id}"/>" class="hotel-img" style="background-image: url(template/images/hotel-2.jpg);">
                                                    <p class="price"><span>$120</span><small> /night</small></p>
                                                </a>
                                                <div class="desc">
                                                    <p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
                                                    <h3><a href="<c:url value="/tour/tour-${t.id}"/>">${t.name}</a></h3>
                                                    <span class="place">${t.address}</span>
                                                    <p>${t.description}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <ul class="pagination">
                                        <c:forEach begin="1" end="${Math.ceil(counter/4)}" var="i">   
                                            <li class="active"><a class="page-link" href="<c:url value="/hotel"/>?page=${i}">${i}</a></li>                                            
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- SIDEBAR-->
                        <div class="col-md-3">
                            <div class="sidebar-wrap">
                                
                                <div class="side search-wrap animate-box">
                                    <h3 class="sidebar-heading">Find your hotel</h3>
                                    <form method="post" class="colorlib-form">
                                        <div class="row">
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
                                                <input type="submit" name="submit" id="submit" value="Find Hotel" class="btn btn-primary btn-block">
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
                                            <h3 class="sidebar-heading">Categories</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Apartment</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Hotel</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Hostel</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Inn</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Villa</h4>
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
                                <div class="side animate-box">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3 class="sidebar-heading">Facilities</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Airport Transfer</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Resto Bar</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Restaurant</h4>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <h4 class="place">Swimming Pool</h4>
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




        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>

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

    </body>
</html>

