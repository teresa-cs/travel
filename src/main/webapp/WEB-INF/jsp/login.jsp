<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/login" var="action" />
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- StyleSheet -->
        <link rel="stylesheet" href="template/css/styles.css" />
    </head>


    <body>
        <section>
            <div class="container">
                <div class="user login">
                    <div class="img-box">
                        <img src="template/images/banner1.jpg" alt="" />
                    </div>
                    <div class="form-box">
                        <a href="<c:url value="/" />"><img src="template/images/back.png"></a>
                        <div class="top">
                            <p>
                                Not a member?
                                <span data-id="#ff0066"><a href="<c:url value="/register"/>" >Register now</a></span>
                            </p>
                        </div>
                            <c:if test="${param.error != null}">
                            <div class="alert alert-danger">
                                Da co loi xay ra!
                            </div>
                        </c:if>
                        <form action="${action}" method="post">
                            <div class="form-control">
                                <h2>Login</h2>
                                <input type="text" placeholder="Enter Username" name="username" />
                                <div>
                                    <input type="password" placeholder="Password"  name="password"/>
                                    <div class="icon form-icon">
                                        <!-- <img src="template/images/eye.svg" alt="" /> -->
                                    </div>
                                </div>
                                <input type="Submit" value="Login" />
                            </div>
                            <div class="form-control">
                                <p>Or continue with</p>
                                <div class="icons">
                                    <div class="icon">
                                        <img src="template/images/search.svg" alt="" />
                                    </div>
                                    <div class="icon">
                                        <img src="template/images/apple.svg" alt="" />
                                    </div>
                                    <div class="icon">
                                        <img src="template/images/facebook.svg" alt="" />
                                    </div>
                                    <div class="icon">
                                        <img src="template/images/github.svg" alt="" />
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>

    </body>

</html>