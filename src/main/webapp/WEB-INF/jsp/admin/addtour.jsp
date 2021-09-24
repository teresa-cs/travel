<%-- 
    Document   : AddTour
    Created on : Sep 22, 2021, 1:46:01 PM
    Author     : anhtu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/addtour" var="action" />


<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add New Tour</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <c:if test="${errMsg != null}">
        <div class="alert alert-danger">${errMsg}</div>
    </c:if>

    <section class="content"></section>
    <div class="card-body">
        <form:form method="POST" action="${action}" modelAttribute="tour" enctype="multipart/form-data">
            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
            <div class="form-group">
                <label for="name">Tour Name</label>
                <form:input type="text" class="form-control col-sm-8" path="name" placeholder="Tour name"/>
                <form:errors path="name" cssClass="text-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="destination">Destination</label>
                <form:textarea type="text" class="form-control col-sm-8" path="destination" placeholder="Destinations"></form:textarea>
                <form:errors path="destination" cssClass="alert alert-danger" element="div"/>
                </div>


                <div class="row mb-2">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Start Date:</label>
                            <div class="input-group date" id="reservationdate" data-target-input="nearest">
                            <form:input type="date" path="begindate" class="form-control datetimepicker-input" data-target="#reservationdate" />
                            <form:errors path="begindate" cssClass="alert alert-danger" element="div"/>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>End Date:</label>
                        <div class="input-group date" id="reservationdate" data-target-input="nearest">
                            <form:input type="date" path="enddate" class="form-control datetimepicker-input" data-target="#reservationdate"  />
                            <form:errors path="enddate" cssClass="alert alert-danger" element="div"/>

                        </div>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label for="meetingplace">Meeting Place</label>
                <form:input path="meetingplace" type="text" class="form-control col-sm-8"  placeholder="Meeting Place"/>
                <form:errors path="meetingplace" cssClass="alert alert-danger" element="div"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:input type="text" path="unitprice" class="form-control col-sm-8" placeholder="Price"/>
                <form:errors path="unitprice" cssClass="alert alert-danger" element="div"/>
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
            <!-- /.card-body -->

            <div class="card-footer col-sm-8">
                <input type="submit" class="btn btn-primary" value="Add tour"/>
            </div>
        </form:form>

        </section>
    </div>
