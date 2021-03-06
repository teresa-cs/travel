<%-- 
    Document   : tableordertour
    Created on : Nov 15, 2021, 2:47:05 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Manage OrderTour</h1>
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
        <!-- ======================================Modal ========================================== -->
        <div class="modal fade" id="modal-lg">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Update Tour</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <form>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Tour Name</label>
                                <input  type="text" class="form-control" placeholder="Hotel name" id="name" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="address">Address</label>
                                <input path="address" type="text" class="form-control"  placeholder="Adress" id="address" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="rate">Rate</label>
                                <input path="rate" type="rate" class="form-control" placeholder="Rate" id="rate" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea path="description" type="text" class="form-control" placeholder="Description" id="descriptionHotel"></textarea>
                            </div>


                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Save" onclick="updateHotel()"/>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
        <!-- ======================================form ========================================== -->


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
                                <thead style="text-align: center">
                                    <tr role="row">
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Image </th>
                                        <th class="sorting col-sm-2" tabindex="0" aria-controls="example2" rowspan="1">
                                            Tour </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                           Order Name </th>>                                        
                                        <th class="sorting col-sm-2" tabindex="0" aria-controls="example2" rowspan="1">
                                            Email </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Phone</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Adult</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Children</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Price</th>
                                        <th class="sorting col-sm-4" tabindex="0" aria-controls="example2" rowspan="1">
                                            Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="ot" items="${ordertour}">
                                        <tr role="row" class="odd">
                                            <td><img src="${ot.idtour.avt}" height="50px" width="70px"/></td>
                                            <td>${ot.idtour.name}</td>
                                            <td>${ot.fullname}</td>
                                            <td>${ot.gmail}</td>
                                            <td>${ot.phone}</td>
                                            <td>${ot.adult}</td>
                                            <td>${ot.children}</td>
                                            <td>${ot.total}</td>
                                            <td>
                                                <c:set var="ctt" value="CHUATHANHTOAN" />
                                                <c:if test="${ot.status == ctt}">
                                                    <p style="color: red; text-align: center">Ch??a thanh to??n</p>
                                                </c:if>
                                                <c:set var="dtt" value="DATHANHTOAN" />
                                                <c:if test="${ot.status == dtt}">
                                                    <p style="color: green; text-align: center">???? thanh to??n</p>
                                                </c:if>
                                                    <c:set var="hh" value="HETHAN" />
                                                <c:if test="${ot.status == hh}">
                                                    <p style="color: orange; text-align: center">H???t h???n</p>
                                                </c:if>
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




                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
