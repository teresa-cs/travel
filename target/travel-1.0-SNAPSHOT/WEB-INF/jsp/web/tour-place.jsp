<%-- 
    Document   : tour-place
    Created on : 11 Sep 2021, 15:09:55
    Author     : trang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Tour ../Template</title>
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
        <link rel="stylesheet" href="../template/fonts/flaticon/font/flaticon.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="../template/css/style.css">

        <!-- Modernizr JS -->
        <script src="../template/js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->

        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
            crossorigin="anonymous"
            />
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
                                    <li class="has-dropdown active">
                                        <a href="tour">Tours</a>
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
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="<c:url value="/login"/>">Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <aside id="colorlib-hero">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(../template/images/cover-img-3.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h2>by colorlib.com</h2>
                                            <h1>Tour Overview</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>

            <div class="colorlib-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="wrap-division" id="alo">
                                        <div class="col-md-12 col-md-offset-0 heading2 animate-box">
                                            <h2>${tour.name}</h2>
                                        </div>
                                        <div class="row">
                                            <c:set var="day" value= "${0}"></c:set>

                                            <c:forEach var="t" items="${tourdetail}" >

                                                <div class="col-md-12 animate-box">
                                                    <div class="room-wrap">
                                                        <div class="row">
                                                            <div class="col-md-6 col-sm-6">
                                                                <div class="room-img" style="background-image: url(${t.image});"></div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-6">
                                                                <div class="desc">
                                                                    <c:if test="${day>day-1}">
                                                                        <c:set var="day" value="${day+1}"></c:set>
                                                                        <span class="day-tour">Day ${day}</span></c:if>
                                                                    <h2>${t.name}</h2>
                                                                    <p>${t.description}</p>
                                                                </div>
                                                            </div>      
                                                        </div>
                                                    </div>
                                                </div>

                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- SIDEBAR-->
                        <div class="col-md-4">
                            <div class="sidebar-wrap">
                                <div class="side search-wrap animate-box">
                                    <h3 class="sidebar-heading">Book now</h3>
                                    <form method="post" class="colorlib-form">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">Full name</label>
                                                    <div class="form-field">
                                                        <input type="text"  class="form-control" placeholder="Full name" id="fullname">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">Email</label>
                                                    <div class="form-field">
                                                        <input type="email" class="form-control" placeholder="Email" id="gmail">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="date">Phone</label>
                                                    <div class="form-field">
                                                        <input type="text" class="form-control" placeholder="Phone" id="phone">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">		
                                                <div class="row">	
                                                    <div class="col-md-6">						
                                                        <label>Adult </label>						
                                                        <div class="form-field text-center" style="color: white;">			
                                                            <i class="fas fa-minus-circle" id="minus-adult"></i>
                                                            <span id="adult-ticket">1</span>
                                                            <i class="fas fa-plus-circle" id="plus-adult"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">						
                                                        <label>Children </label>						
                                                        <div class="form-field text-center" style="color: white;">			
                                                            <i class="fas fa-minus-circle" id="minus-children"></i>
                                                            <span id="children-ticket">0</span>
                                                            <i class="fas fa-plus-circle" id="plus-children"></i>
                                                        </div>
                                                    </div>
                                                </div>									
                                            </div>
                                            <div class="col-md-12">		
                                                <div class="row">	
                                                    <div class="col-md-6">						
                                                        <div class="form-group">
                                                            <label for="date">Discount</label>
                                                            <div class="form-field">
                                                                <input type="text" id="percentPromotion" class="form-control" placeholder="Discount" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">											
                                                        <a class="btn btn-success btn-block" id="bt-code">Apply</a>
                                                    </div>										
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <i style="color: red;" id="notifi-code"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <table class="col-md-12" style="margin-top: 10px">
                                                    <tr>
                                                        <td style="color: white;">Price</td>
                                                        <td class="text-right" style="color: white;" id="price">0</td>
                                                    </tr>
                                                </table>																		
                                            </div>
                                            <div class="col-md-12">
                                                <a  id="bt_booknow" value="Book now" class="btn btn-primary btn-block">Book now</a>
                                            </div>
                                        </div>
                                    </form>
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
                            <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
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
                                <li><a href="#">A Definitive Guide to the Best Dining and Drinking Venues in the City</a></li>
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
                                <!-- Link back to Colorlib can't be removed. ../Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This ../template is Brought To You By <i class="icon-heart2" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Code-Projects.Org</a>
                                <!-- Link back to Colorlib can't be removed. ../Template is licensed under CC BY 3.0. --></span> 
                                <span class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> , <a href="http://pexels.com/" target="_blank">Pexels.com</a></span>
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
            const adultTicket = document.getElementById("adult-ticket");
            const childrenTicket = document.getElementById("children-ticket");
            const price = document.getElementById("price");
            const percentPromotion = document.getElementById("percentPromotion");

            function prices(adult, children, percent) {
                if (percent) {
                    return (adult * ${tour.price} + children * 500) * ((100 - percent) / 100);
                }
                return adult * ${tour.price} + children * 500;
            }


            const plusAdult = document.getElementById("plus-adult");
            plusAdult.addEventListener("click", () => {
                adultTicket.innerHTML = parseInt(adultTicket.innerHTML) + 1;
                isCheck().then(res =>
                    price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML), res));
            })

            const minusAdult = document.getElementById("minus-adult");
            minusAdult.addEventListener("click", () => {

                if (parseInt(adultTicket.innerHTML) > 1) {
                    adultTicket.innerHTML = parseInt(adultTicket.innerHTML) - 1;
                    isCheck().then(res =>
                        price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML), res));
                }
            })



            const plusChildren = document.getElementById("plus-children");
            plusChildren.addEventListener("click", () => {
                childrenTicket.innerHTML = parseInt(childrenTicket.innerHTML) + 1;
                isCheck().then(res =>
                    price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML), res));
            })

            const minusChildren = document.getElementById("minus-children");
            minusChildren.addEventListener("click", () => {

                if (parseInt(childrenTicket.innerHTML) > 0) {
                    childrenTicket.innerHTML = parseInt(childrenTicket.innerHTML) - 1;
                    isCheck().then(res =>
                        price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML), res));
                }
            })

            price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML));

            function checkDiscount(code) {
                let fecthDate = {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify()
                }
                return fetch(`http://localhost:8080/travel/api/discount/` + code, fecthDate)
                        .then(res => res.json())
                        .then(data => data)
                        .catch(err => err)

            }

            const bt_code = document.getElementById("bt-code");

            const notiCode = document.getElementById("notifi-code");


            bt_code.addEventListener("click", () => check(percentPromotion.value.toUpperCase()));
            async function check(code) {
                if (code) {
                    const discount = await checkDiscount(code);
                    if (discount.percentPromotion) {
                        notiCode.innerHTML = `Mã giảm giá ` + discount.percentPromotion + `%`;
                        price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML), discount.percentPromotion);
                    } else {
                        notiCode.innerHTML = `Mã giảm giá không hợp lệ`;
                        price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML));
                    }

                } else {
                    notiCode.innerHTML = ``;
                    price.innerHTML = prices(parseInt(adultTicket.innerHTML), parseInt(childrenTicket.innerHTML));
                }

            }

            async function isCheck() {
                const discout = await checkDiscount(percentPromotion.value.toUpperCase());
                if (discout) {
                    return  discout.percentPromotion;
                }
                return 0;
            }

            async function getId() {
                const discout = await checkDiscount(percentPromotion.value.toUpperCase());
                if (discout) {
                    return  discout.id;
                }
                return 0;
            }

            function addOrderTour(fullname, gmail, phone, adult, children, total, iddiscount,tourId) {
                let fecthDate = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({"fullname": fullname,
                        "gmail": gmail,
                        "phone": phone,
                        "adult": adult,
                        "children": children,
                        "total": total,
                        "iddiscount": iddiscount})
                }
                return fetch(`http://localhost:8080/travel/api/ordertour-${tourId}`, fecthDate)
                        .then(res => res.json())
                        .then(data => data)
                        .catch(err => err)
            }
            
            
            function deleteInfo(){
                document.getElementById("fullname").value = "";
                document.getElementById("gmail").value = "";
                document.getElementById("phone").value = "";
                adultTicket.innerHTML = "1";
                childrenTicket.innerHTML = "0";
                price.innerHTML = "${tour.price}";
            }
                

            const btBookNow = document.getElementById("bt_booknow");
            btBookNow.addEventListener("click", () => {
                let fullname = document.getElementById("fullname").value;
                let gmail = document.getElementById("gmail").value;
                let phone = document.getElementById("phone").value;
                let adult = parseInt(adultTicket.innerHTML);
                let children = parseInt(childrenTicket.innerHTML);
                let total = parseInt(price.innerHTML);
                if (percentPromotion.value.toUpperCase().length > 0) {
                    getId().then(res => {
                        if (res != undefined) {
                            addOrderTour(fullname, gmail, phone, adult, children, total,${tour.id}, res).then(res => res);
                            deleteInfo();
                        } else {
                            notiCode.innerHTML = `Mã giảm giá không hợp lệ`;
                        }
                    })

                } else {
                    addOrderTour(fullname, gmail, phone, adult, children, total, null,${tour.id}).then(res => res);
                    deleteInfo();
                }

            })
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

    </body>
</html>

