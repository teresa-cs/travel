<%-- 
    Document   : post_detail
    Created on : Sep 29, 2021, 9:41:52 PM
    Author     : anhtu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%--<c:url value="/post/post-${p.id}" var="action" />--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <meta property="og:title" content="" />
        <meta property="og:image" content="" />
        <meta property="og:url" content="" />
        <meta property="og:site_name" content="" />
        <meta property="og:description" content="" />
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="../template/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="../template/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="../template/css/bootstrap.css">


        <!-- Magnific Popup -->
        <link rel="stylesheet" href="../template/css/magnific-popup.css">

        <!-- Flexslider  -->
        <link rel="stylesheet" href="../template/css/flexslider.css">

        <!-- Owl Carousel -->
        <link rel="stylesheet" href="../template/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../template/css/owl.theme.default.min.css">

        <!-- Date Picker -->
        <link rel="stylesheet" href="../template/css/bootstrap-datepicker.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="../template/css/style.css">

        <!-- Modernizr JS -->
        <script src="../template/js/modernizr-2.6.2.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="../template/js/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="colorlib-loader"></div>

        <div id="page">

            <nav class="colorlib-nav" role="navigation">
                <div class="top-menu">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="colorlib-logo"><a href="<c:url value="/"/>">Tour</a></div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li><a href="<c:url value="/"/>">Home</a></li>
                                    <li class="has-dropdown">
                                        <a href="<c:url value="/tour"/>">Tours</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Destination</a></li>
                                            <li><a href="#">Cruises</a></li>
                                            <li><a href="#">Hotels</a></li>
                                            <li><a href="#">Booking</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value="/hotel"/>">Hotels</a></li>
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="<c:url value="/post"/>">Blog</a></li>
                                    <li class="active"><a href="about.html">About</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                                        <a href="<c:url value="/login"/>">Log in</a>
                                    </c:if>
                                    <li class="has-dropdown">
                                        <c:if test="${currentUser.avt != null}">
                                            <img src="${currentUser.avt}" class="rounded-circle" style="width:30px;height:25px"/>
                                        </c:if>
                                        <c:if test="${currentUser.avt == null}">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                        </c:if>
                                        <a href="<c:url value="/"/>">${pageContext.request.userPrincipal.name}</a>
                                        <ul class="dropdown">
                                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                                <li><a href="<c:url value="/logout"/>"> Logout</a></li></c:if>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>

                <aside id="colorlib-hero">
                    <div class="flexslider">
                        <ul class="slides">
                            <li style="background-image: url(../template/images/cover-img-5.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                            <div class="slider-text-inner text-center">
                                                <h2>by colorlib.com</h2>
                                                <h1>About us</h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </aside>

                <div id="colorlib-about">
                    <div class="container">
                        <div class="row">
                            <div class="about-flex">
                                <div class="col-three-forth animate-box">
                                    <h2>History</h2>
                                    <div class="row">
                                        <div class="col-md-12">

                                            <p>${p.title}</p>



                                        <div class="row row-pb-sm">
                                            <div class="col-md-6">
                                                <img class="img-responsive" src="${p.image}" alt="">
                                            </div>
                                            <div class="col-md-6">
                                                <p>${p.content}</p>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="comment">
                <div class="container">
                    <div class="row">
                        <div class="col-md-15">
                            <div class="form-group">
                                <label for="date">
                                    <h3>Comment</h3>
                                </label>
                                <form>
                                    <div class="form-field">

                                        <textarea type="text" id="commentId" class="form-control" placeholder="Comment..."></textarea>
                                        <input type="button" class="btn btn-primary" value="Add comment" style="margin-top: 20px"
                                               onclick="addComment(${p.id})"/>
                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="blog-entry aside-stretch-right">
                            <div id="commentArea">
                                <c:forEach items="${posts}" var="c">
                                    <div class="row" >

                                        <div class="col-md-12 animate-box fadeInUp animated-fast">
                                            <a href="blog.html" class="blog-post">
                                                <c:if test="${c.iduser.avt != null}">
                                                    <span class="img" style="background-image: url(${c.iduser.avt});"></span>
                                                </c:if>
                                                <c:if test="${c.iduser.avt == null}">
                                                    <span class="img" style="background-image: url(../template/images/cover-img-5.jpg);"></span>
                                                </c:if>
                                                <div class="desc my-date">
                                                    <i style="color:black" > <span>${c.createdDate}</span></i>
                                                    <h3>${c.comment}</h3>
                                                    <span class="cat">${c.iduser.username}</span>
                                                </div>
                                            </a>
                                        </div>                                
                                    </div>
                                </c:forEach>     
                            </div>

                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <ul class="pagination">
                                        <c:forEach begin="1" end="${Math.ceil(countCmt/4)}" var="i">   
                                            <li class="active"><a class="page-link" href="<c:url value="/post/post-${p.id}"/>?page=${i}">${i}</a></li>                                            
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer id="colorlib-footer" role="contentinfo">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-3 colorlib-widget">
                            <h4>Tour Agency</h4>
                            <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta
                                adipisci architecto culpa amet.</p>
                            <p>
                            <ul class="colorlib-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-2 colorlib-widget">
                            <h4>Book Now</h4>
                            <p>
                            <ul class="colorlib-footer-links">
                                <li><a href="#">Flight</a></li>
                                <li><a href="#">Hotels</a></li>
                                <li><a href="#">Tour</a></li>
                                <li><a href="#">Car Rent</a></li>
                                <li><a href="#">Beach &amp; Resorts</a></li>
                                <li><a href="#">Cruises</a></li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-2 colorlib-widget">
                            <h4>Top Deals</h4>
                            <p>
                            <ul class="colorlib-footer-links">
                                <li><a href="#">Edina Hotel</a></li>
                                <li><a href="#">Quality Suites</a></li>
                                <li><a href="#">The Hotel Zephyr</a></li>
                                <li><a href="#">Da Vinci Villa</a></li>
                                <li><a href="#">Hotel Epikk</a></li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-2">
                            <h4>Blog Post</h4>
                            <ul class="colorlib-footer-links">
                                <li><a href="#">The Ultimate Packing List For Female Travelers</a></li>
                                <li><a href="#">How These 5 People Found The Path to Their Dream Trip</a></li>
                                <li><a href="#">A Definitive Guide to the Best Dining and Drinking Venues in the City</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3 col-md-push-1">
                            <h4>Contact Information</h4>
                            <ul class="colorlib-footer-links">
                                <li>291 South 21th Street, <br> Suite 721 New York NY 10016</li>
                                <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                <li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                <li><a href="#">yoursite.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is Brought To You By <i class="icon-heart2" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Code-Projects.Org</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                                <span class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a>
                                    , <a href="http://pexels.com/" target="_blank">Pexels.com</a></span>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>

        <script>
            window.onload = function () {
                let dates = document.querySelectorAll(".my-date > i");
                for (let i = 0; i < dates.length; i++) {
                    let d = dates[i]
                    d.innerText = moment(d.innerText).fromNow();
                }
            }

        </script>

        <!-- jQuery -->
        <script src="../template/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="../template/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="../template/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="../template/js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="../template/js/jquery.flexslider-min.js"></script>
        <!-- Owl carousel -->
        <script src="../template/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup -->
        <script src="../template/js/jquery.magnific-popup.min.js"></script>
        <script src="../template/js/magnific-popup-options.js"></script>
        <!-- Date Picker -->
        <script src="../template/js/bootstrap-datepicker.js"></script>
        <!-- Stellar Parallax -->
        <script src="../template/js/jquery.stellar.min.js"></script>

        <!-- Main -->
        <script src="../template/js/main.js"></script>
        <script src="../template/js/mainn.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

    </body>

</html>