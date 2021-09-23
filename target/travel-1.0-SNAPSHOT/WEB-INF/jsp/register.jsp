<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/register" var="action" />
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
        <section class="active">
        <div class="container active">
    
          <!-- Register -->
          <div class="user signup">
            <div class="form-box">
              <a href="<c:url value="/" />"><img src="template/images/back.png"></a>
              <div class="top">
                <p>
                  Already a member?
                  <span data-id="#1a1aff"><a href="<c:url value="/login" />">Login now</a></span>
                </p>
              </div>
                  <c:if test="${errMsg != null}">
                  <div class="alert alert-danger">
                      ${errMsg}
                  </div>
                  </c:if>
                  <form:form  method="post" action="${action}" modelAttribute="user">
                <div class="form-control">
                  <h2>Register</h2>
                    <form:input path="username" type="text" placeholder="Username"/>
                    <form:input path="password" type="password" placeholder="Password"/>
                    <form:input path="confirmPassword" type="password" placeholder="Confirm password"/>
                  <input type="Submit" value="Register">
                </div>
                <div class="form-control">
                  <p>Or continue with</p>
                  <div class="icons">
                    <div class="icon">
                      <img src="template/images/search.svg" alt="">
                    </div>
                    <div class="icon">
                      <img src="template/images/apple.svg" alt="">
                    </div>
                    <div class="icon">
                      <img src="template/images/facebook.svg" alt="">
                    </div>
                    <div class="icon">
                      <img src="template/images/github.svg" alt="">
                    </div>
                  </div>
                </div>
              </form:form>
            </div>
            <div class="img-box">
              <img src="template/images/banner2.jpg">
            </div>
          </div>
        </div>
      </section>
        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>
    </body>

</html>
