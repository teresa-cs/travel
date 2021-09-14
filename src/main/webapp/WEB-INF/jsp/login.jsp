<%-- 
    Document   : login
    Created on : 9 Sep 2021, 13:29:30
    Author     : trang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- StyleSheet -->
        <link rel="stylesheet" href="template/css/styles.css" />
        <title>Sign Up | Login Form</title>
    </head>


    <body>


        <section>
            <div class="container">
                <div class="user login">
                    <div class="img-box">
                        <img src="template/images/banner1.jpg" alt="" />
                    </div>
                    <div class="form-box">
                        <a href="#"><img src="template/images/back.png"></a>
                        <div class="top">
                            <p>
                                Not a member?
                                <span data-id="#ff0066">Register now</span>
                            </p>
                        </div>
                        <form action="">
                            <div class="form-control">
                                <h2>Login</h2>
                                <input type="text" placeholder="Enter Username" />
                                <div>
                                    <input type="password" placeholder="Password" />
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

                <!-- Register -->
                <div class="user signup">
                    <div class="form-box">
                        <a href="#"><img src="template/images/back.png"></a>
                        <div class="top">
                            <p>
                                Already a member?
                                <span data-id="#1a1aff">Login now</span>
                            </p>
                        </div>
                        <form action="">
                            <div class="form-control">
                                <h2>Register</h2>
                                <input type="email" placeholder="Enter Email" />
                                <div>
                                    <input type="password" placeholder="Password" />
                                    <div class="icon form-icon">
                                        <img src="template/images/eye.svg" alt="" />
                                    </div>
                                </div>
                                <div>
                                    <input type="password" placeholder="Confirm Password" />
                                    <div class="icon form-icon">
                                        <img src="template/images/eye.svg" alt="" />
                                    </div>
                                </div>
                                <input type="Submit" value="Register" />
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
                    <div class="img-box">
                        <img src="template/images/banner2.jpg" />
                    </div>
                </div>
            </div>
        </section>
        <!-- IndexJs -->
        <script src="template/js/indexx.js"></script>
        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>

        <!-- IndexJs -->
        <script src="template/js/indexx.js"></script>
    </body>

</html>