<%-- 
    Document   : hotel
    Created on : 25 Sep 2021, 21:51:46
    Author     : trang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML>
<html>
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
                        <div class="col-md-9" >
                            <div class="row" >

                                <div class="wrap-division" id="list-hotel" >
                                    <c:forEach var="t" items="${hotel}">

                                        <div class="col-md-6 col-sm-6 animate-box" style="height: 550px;  margin-top: 20px" >
                                            <div class="hotel-entry">
                                                <a href="<c:url value="/hotel/hotel-${t.id}"/>" class="hotel-img" 
                                                   style="background-image: url(${t.avt})">
                                                </a>
                                                <div class="desc">
                                                    <p class="star"><span id="rates">
                                                            <c:forEach begin="1" end="${t.rate}" var="i">
                                                                <i class="icon-star-full"></i>
                                                            </c:forEach></span> 545 Reviews</p>
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
                                        <c:forEach begin="1" end="${Math.ceil(counter/10)}" var="i">   
                                            <li class="active"><a class="page-link" href="<c:url value="/hotel"/>?page=${i}">${i}</a></li>                                            
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- SIDEBAR-->
                        <div class="col-md-3">
                            <div class="sidebar-wrap">

                                

                             
                                <div class="side animate-box">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3 class="sidebar-heading">Rating</h3>
                                            <form method="post" class="colorlib-form-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check5" onclick="uncheck(5);" >
                                                    <label class="form-check-label" for="exampleCheck1"> 
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check4" onclick="uncheck(4);" >
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check3" onclick="uncheck(3)" >
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check2" onclick="uncheck(2)" >
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check1" onclick="uncheck(1)" >
                                                    <label class="form-check-label" for="exampleCheck1">
                                                        <p class="rate"><span><i class="icon-star-full"></i></span></p>
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

        <script src="template/js/mainn.js"></script>
        <script>
            
               
        </script>

    </body>
</html>

