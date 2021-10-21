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

        
    </body>
</html>
</html>
