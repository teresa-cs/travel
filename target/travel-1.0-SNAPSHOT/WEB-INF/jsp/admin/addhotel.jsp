<%-- 
    Document   : addhotel
    Created on : Oct 1, 2021, 11:00:36 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/addhotel" var="action" />
<!--Content-wrapper-->

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Hotel</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <section class="content"></section><!-- comment -->

    <div class="card-body">
        <form:form method="POST" action="${action}" modelAttribute="hotel" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Hotel Name</label>
                <form:input type="text" class="form-control col-sm-8" path="name" placeholder="Hotel name"/>
                <form:errors path="name" cssClass="text-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="name">Address</label>
                <form:input type="text" class="form-control col-sm-8" path="address" placeholder="Address"/>
                <form:errors path="address" cssClass="text-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="name">Rate</label>
                <form:input type="text" class="form-control col-sm-8" path="" placeholder="Address"/>
                <form:errors path="rate" cssClass="text-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="destination">Description</label>
                <form:textarea type="text" class="form-control col-sm-8" path="description" placeholder="Description"></form:textarea>
                <form:errors path="description" cssClass="alert alert-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="exampleInputFile">File input</label>
                <div class="input-group">
                    <div class="custom-file col-sm-8">
                        <form:input type="file" class="custom-file-input" id="exampleInputFile" path="file" />
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                    </div>
                </div>
            </div>

            <div class="card-footer col-sm-8">
                <input type="submit" class="btn btn-primary" value="Add hotel"/>
            </div>
        </form:form>

    </div>
</div>
