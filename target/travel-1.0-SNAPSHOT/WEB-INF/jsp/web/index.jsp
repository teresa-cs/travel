<%-- 
    Document   : index
    Created on : Aug 3, 2021, 7:08:28 PM
    Author     : anhtu
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Tour Template</title>


    </head>
    <body>

        <div class="colorlib-tour colorlib-light-grey">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                        <h2>Popular Destination</h2>
                        <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
            </div>
            <div class="tour-wrap">
                <c:forEach var="t" items="${besttour}" >
                <a href="<c:url value="/tour/tour-${t.id}"/>" class="tour-entry animate-box">
                    <div class="tour-img" style="background-image: url(${t.avt});">
                    </div>
                    <span class="desc">
                        <p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
 
                        <span class="city">${t.name}</span>
                        <span class="price">${t.price}$</span>
                    </span>
                </a>
                </c:forEach>
               
               
            </div>
        </div>



        <div id="colorlib-hotel">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                        <h2>Recommended Hotels</h2>
                        <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 animate-box">
                        <div class="owl-carousel">
                            <c:forEach var="t" items="${hotel}" >
                            <div class="item">
                                <div class="hotel-entry">
                                    <a href="hotels.html" class="hotel-img" style="background-image: url(${t.avt});">
                                        <p class="price"><span>$120</span><small> /night</small></p>
                                    </a>
                                    <div class="desc">
                                        <p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
                                        <h3><a href="#">${t.name}</a></h3>
                                        <span class="place">${t.address}</span>
                                        <p>${t.description}</p>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="colorlib-tour">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                        <h2>Most Popular Travel Countries</h2>
                        <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="f-tour">
                            <div class="row row-pb-md">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-1.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-2.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-3.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-4.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 animate-box">
                                    <div class="desc">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3>Italy, Europe</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p><br>
                                            </div>
                                            <div class="col-md-12">
                                                <h4>Best Tours City</h4>
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Rome</a></li>
                                                            <li><a href="#">Milan</a></li>
                                                            <li><a href="#">Genoa</a></li>
                                                            <li><a href="#">Verona</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Venice</a></li>
                                                            <li><a href="#">Bologna</a></li>
                                                            <li><a href="#">Trieste</a></li>
                                                            <li><a href="#">Florence</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Palermo</a></li>
                                                            <li><a href="#">Siena</a></li>
                                                            <li><a href="#">San Marino</a></li>
                                                            <li><a href="#">Naples</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <p><a href="tours.html" class="btn btn-primary">View All Places</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="f-tour">
                            <div class="row">
                                <div class="col-md-6 col-md-push-6">
                                    <div class="row">
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-5.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-6.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-7.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <a  href="tours.html" class="f-tour-img" style="background-image: url(template/images/tour-8.jpg);">
                                                <div class="desc">
                                                    <h3>Rome - 5 Days</h3>
                                                    <p class="price"><span>$120</span> <small>/ person</small></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 animate-box col-md-pull-6 text-right">
                                    <div class="desc">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3>Athens, Greece</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p><br>
                                            </div>
                                            <div class="col-md-12">
                                                <h4>Best Tours City</h4>
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Rome</a></li>
                                                            <li><a href="#">Milan</a></li>
                                                            <li><a href="#">Genoa</a></li>
                                                            <li><a href="#">Verona</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Venice</a></li>
                                                            <li><a href="#">Bologna</a></li>
                                                            <li><a href="#">Trieste</a></li>
                                                            <li><a href="#">Florence</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <ul>
                                                            <li><a href="#">Palermo</a></li>
                                                            <li><a href="#">Siena</a></li>
                                                            <li><a href="#">San Marino</a></li>
                                                            <li><a href="#">Naples</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <p><a href="tours.html" class="btn btn-primary">View All Places</a></p>
                                            </div>
                                        </div>
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

