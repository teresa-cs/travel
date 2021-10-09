<%-- 
    Document   : addcomment
    Created on : Oct 5, 2021, 9:02:06 PM
    Author     : anhtu
--%>

<%-- 
    Document   : addhotel
    Created on : Oct 1, 2021, 11:00:36 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/addcomment" var="action" />
<!--Content-wrapper-->

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Cmt</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <section class="content"></section><!-- comment -->

    <div class="card-body">
        <form:form method="POST" action="${action}" modelAttribute="comment" >
            <div class="form-group">
                <label for="name">Cmt</label>
                <form:input type="text" class="form-control col-sm-8" path="comment" placeholder="Cmt"/>
                <form:errors path="comment" cssClass="text-danger" element="div"/>
            </div>

            <div class="card-footer col-sm-8">
                <input type="submit" class="btn btn-primary" value="Add comment"/>
            </div>
        </form:form>

    </div>
</div>