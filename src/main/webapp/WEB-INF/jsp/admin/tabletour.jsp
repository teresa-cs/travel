<%-- 
    Document   : tabletour
    Created on : Sep 25, 2021, 11:45:44 PM
    Author     : anhtu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/tabletour" var="action" />


<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <!--Content-wrapper-->
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Table Tour</h1>
                        </div>

                        <!-- Search -->
                        <div class="col-sm-6">
                            <form>
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" name="kw" type="search" placeholder="Search" aria-label="Search" >
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>
            <h1>${a}</h1>
            <!-- ======================================form ========================================== -->
            <div class="card-body" style="margin: 0px; padding: 5px;">
                <form:form action="${action}" method="POST" modelAttribute="tour-update" enctype="multipart/form-data" >  
                    <div style="display: none; visibility: hidden">
                    <form:input type="text" class="form-control" path="id" placeholder="id" value="${t.id}"/>
                    </div>
                    <div class="row mb-3">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="name">Tour Name</label>
                                <form:input type="text" class="form-control" path="name" placeholder="Tour name" value="${t.name}"/>
                                <form:errors path="name" cssClass="text-danger" element="div"/>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="meetingplace">Meeting Place</label>
                                <form:input path="meetingplace" type="text" class="form-control"  placeholder="Meeting Place" value="${t.meetingplace}"/>
                                <form:errors path="meetingplace" cssClass="alert alert-danger" element="div"/>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="price">Price</label>
                                <form:input type="text" path="unitprice" class="form-control" placeholder="Price" value="${t.unitprice}"/>
                                <form:errors path="unitprice" cssClass="alert alert-danger" element="div"/>
                            </div>              
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="exampleInputFile">File input</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <form:input type="file" class="custom-file-input" id="exampleInputFile" path="file" value="${t.avt}"/>
                                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="destination">Destination</label>
                                <form:textarea type="text" class="form-control" path="destination" placeholder="Destinations"></form:textarea>
                                <form:errors path="destination" cssClass="alert alert-danger" element="div"/>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Start Date:</label>
                                <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                    <form:input type="date" path="begindate" class="form-control datetimepicker-input" data-target="#reservationdate" value="${t.begindate}"/>
                                    <form:errors path="begindate" cssClass="alert alert-danger" element="div"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>End Date:</label>
                                <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                    <form:input type="date" path="enddate" class="form-control datetimepicker-input" data-target="#reservationdate" value="${t.enddate}" />
                                    <form:errors path="enddate" cssClass="alert alert-danger" element="div"/>

                                </div>
                            </div>               
                        </div>
                        <div >

                            <input type="submit" class="btn btn-primary" value="Update" style="margin-top: 30px; margin-left: 30px;" >
                        </div>
                    </div>
                </form:form>                        
            </div>

            <!-- ======================================table========================================== -->

            <section class="content">
                <div class="card-body">
                    <div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                        <div class="row">
                            <div class="col-sm-12 col-md-6"></div>
                            <div class="col-sm-12 col-md-6"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="example2" class="table table-bordered table-hover dataTable" role="grid"
                                       aria-describedby="example2_info">
                                    <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Id</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                BeginDate</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                EndDate</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Price</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Delete</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach var="t" items="${tour}">
                                            <tr role="row" class="odd">
                                                <td>${t.id}</td>
                                                <td>${t.name}</td>
                                                <td>${t.begindate}</td>
                                                <td>${t.enddate}</td>
                                                <td>${t.unitprice}</td>
                                                <td style="padding: 5px">
                                                    <c:url value="/tabletour-delete" var="tourrr"> <c:param name="id" value="${t.id}"/>

                                                    </c:url>
                                                    <a href="${tourrr}">
                                                        <button type="button"
                                                                class="btn btn-block bg-gradient-danger">Delete</button>
                                                    </a>
                                                </td>
                                                <td style="padding: 5px">
                                                    <c:url value="/tabletour" var="updatetour"> <c:param name="id" value="${t.id}"/></c:url>
                                                    <a href="${updatetour}">
                                                        <button type="button"
                                                                class="btn btn-block bg-gradient-primary">Update</button>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-5">
                                <div class="dataTables_info" id="example2_info" role="status" aria-live="polite"></div>
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                                    <ul class="pagination">
                                        <li class="paginate_button page-item previous disabled" id="example2_previous">
                                            <a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0"
                                               class="page-link">Previous</a>
                                        </li>


                                        <c:forEach begin="1" end="${Math.ceil(counter/10)}" var="i">   
                                            <li class="paginate_button page-item active"><a class="page-link" href="<c:url value="/tabletour"/>?page=${i}">${i}</a></li>                                            
                                            </c:forEach>

                                        <li class="paginate_button page-item next" id="example2_next"><a href="#"
                                                                                                         aria-controls="example2" data-dt-idx="7" tabindex="0"
                                                                                                         class="page-link">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>
