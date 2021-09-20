<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><tiles:insertAttribute name="title" /></title>
	<tiles:insertAttribute name="css" />
	</head>
    <body>
        <div class="colorlib-loader"></div>
        <!<!-- HEADER -->
        <tiles:insertAttribute name="header" />
        
        <!<!-- CONTENT -->
        <tiles:insertAttribute name="content" />
        
        <!<!-- FOOTER -->
        <tiles:insertAttribute name="footer" />
        
        <!<!-- JS -->
        <tiles:insertAttribute name="js" />      
    </body>
</html>
