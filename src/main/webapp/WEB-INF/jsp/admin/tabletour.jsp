<%-- 
    Document   : tabletour
    Created on : Sep 25, 2021, 11:45:44 PM
    Author     : anhtu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    </div>
                </div><!-- /.container-fluid -->
            </section>
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
                                                <td>
                                                    <c:url value="/tabletour" var="tourrr"> <c:param name="id" value="${t.id}"/>
                                                            
                                                    </c:url>
                                                    <a href="${tourrr}">
                                                        <button type="button"
                                                                class="btn btn-block bg-gradient-danger">Delete</button>
                                                    </a>
                                                </td>
                                                <td>
                                                    <button type="button"
                                                            class="btn btn-block bg-gradient-primary">Update</button>
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
