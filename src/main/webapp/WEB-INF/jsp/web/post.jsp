<%-- 
    Document   : post
    Created on : Sep 29, 2021, 8:40:32 PM
    Author     : anhtu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div id="colorlib-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-16">
                <div class="row">
                    <div class="wrap-division">
                        
                        <c:forEach var="t" items="${post}" >

                        <article class="animate-box col-md-6 col-sm6 fadeInUp animated-fast">
                            <a href="<c:url value="/post/post-${t.id}"/>">
                            <div class="blog-img" style="background-image: url(${t.image});"></div>
                            </a>
                            <div class="desc">
                                <div class="meta">
                                    <p>
                                        <span>Feb 24, 2018 </span>
                                        <span>10 like </span>
                                        <span><a href="#">2 Comments</a></span>
                                    </p>
                                </div>
                                <h2><a href="#">${t.title}</a></h2>
                                <p>${t.content}</p>
                            </div>
                        </article>
                        </c:forEach>

 
                    </div>	
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <ul class="pagination">
                    <li class="disabled"><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>
            </div>
        </div>
    </div>


</div>