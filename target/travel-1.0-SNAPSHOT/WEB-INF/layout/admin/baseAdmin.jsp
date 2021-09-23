<%-- 
    Document   : admin
    Created on : Sep 21, 2021, 8:02:40 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="template/css/font-awesome/all.min.css"> 
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css">
    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
        <div  class="wrapper">
            <!<!-- HEADER -->
            <tiles:insertAttribute name="header" />

            <!<!-- FOOTER -->
            <tiles:insertAttribute name="menu" />

            <!<!-- CONTENT -->
            <tiles:insertAttribute name="content" />
        </div>

        <!-- jQuery -->
        <script src="template/js/jquery.min.admin.js"></script>
        <!-- AdminLTE App -->
        <script src="template/js/adminlte.js"></script>
    </body>
</html>
</html>
