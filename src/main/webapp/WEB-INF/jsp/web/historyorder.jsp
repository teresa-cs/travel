<%-- 
    Document   : historyorder
    Created on : Nov 24, 2021, 6:26:37 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>


<body>
    <div class="colorlib-tour">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                    <h2>History OrderTour</h2>
                    <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                </div>
            </div>
            
            <c:forEach var="order" items="${yourorderT}">
            <div class="row">
                <div class="col-md-12">
                    <div class="f-tour">					
                        <div class="col-md-5">
                            <div class="row">
                                <div class="animate-box">
                                    <a  href="<c:url value="/tour/tour-${order.idtour.id}"/>" class="f-tour-img col-md-9" style="background-image: url(${order.idtour.avt});">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 animate-box">
                            <div class="desc">
                                <div>
                                    <div>
                                        <h3>${order.idtour.name}</h3>												
                                        <h4 class="col-md-10">Price: ${order.total}$ </h4>
                                        <div>
                                            
                                            <h5 class="col-md-4">begindate: ${order.idtour.begindate}</h5>                  
                                            <h5 class="col-md-6">enddate: ${order.idtour.enddate}</h5>
                                        </div>
                                        <div>
                                            <h5 class="col-md-4">adult: ${order.adult}</h5>                  
                                            <h5 class="col-md-6"> children: ${order.children}</h5>
                                        </div>
                                    </div>
                                    <div>

                                        <h4 class="col-md-7"> Status: ${order.status}</h4>
                                        <p><a href="#" class="btn btn-primary">Pay</a></p>

                                    </div>
                                </div>
                            </div>
                        </div>							
                    </div>


                </div>

            </div>
            </c:forEach>
 
            <div class="row" style="margin-top: 50px">
                <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                    <h2>History OrderHotel</h2>
                    
                    
                </div>
                <c:forEach var="orderH" items="${yourorderH}">
            <div class="row">
                <div class="col-md-12">
                    <div class="f-tour">					
                        <div class="col-md-5">
                            <div class="row">
                                <div class="animate-box">
                                    <a  href="<c:url value="/hotel/order-${orderH.idroom.id}"/>" class="f-tour-img col-md-9" style="background-image: url(${orderH.idroom.image});">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 animate-box">
                            <div class="desc">
                                <div>
                                    <div>
                                        <h3>${orderH.idroom.idhotel.name} Hotel</h3>												
                                        <h4 class="col-md-10"> ${orderH.idroom.type}</h4>
                                        <div>
                                            
                                            <h5 class="col-md-4">Check in: ${orderH.checkin}</h5>                  
                                            <h5 class="col-md-6">Check out: ${orderH.checkout}</h5>
                                        </div>
                                        <div>
                                            <h5 class="col-md-4">Quantity: ${orderH.quantity}</h5>                  
                                        </div>
                                    </div>
                                    <div>

                                        <h4 class="col-md-7"> Status: ${orderH.status}</h4>
                                        <p><a href="#" class="btn btn-primary">Pay</a></p>

                                    </div>
                                </div>
                            </div>
                        </div>							
                    </div>


                </div>

            </div>
            </c:forEach>
            </div>
        </div>
    </div>
</body>
