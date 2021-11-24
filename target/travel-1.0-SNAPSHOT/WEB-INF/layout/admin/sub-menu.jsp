<%-- 
    Document   : footer
    Created on : Sep 21, 2021, 8:03:01 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> 
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css">

<!-- Toastr -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <span class="brand-text font-weight-light" >Nhân viên quản lý web</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <div class="image">           
                    <c:if test="${currentUser.avt != null}">
                        <img src="${currentUser.avt}" class="rounded-circle" style="width:30px;height:27px"/>
                    </c:if>

                </div>
                <div class="info">
                    <a href="<c:url value="/"/>">${pageContext.request.userPrincipal.name}</a>
                </div>
            </c:if>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                   with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Manages
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>

                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<c:url value="/admin/tabletour"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Tour</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/tablehotel"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Hotel</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/tablepost"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Post</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/discount"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Discout</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/tableordertour"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>OrderTour</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/tableorderhotel"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>OrderHotel</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/account"/>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Account</p>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Statistics 
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>

                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<c:url value="/admin/stats-place" />" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Total Tours by Places</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/total-revenue" />" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Total revenue</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/total-month" />" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Total by Month</p>
                            </a>
                        </li>

                    </ul>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- AdminLTE App -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/js/adminlte.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.3/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.9/sweetalert2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>