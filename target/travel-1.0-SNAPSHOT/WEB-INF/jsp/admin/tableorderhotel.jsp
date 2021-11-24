<%-- 
    Document   : tableorderhotel
    Created on : Nov 19, 2021, 3:14:52 PM
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
                        <h1>Manage OrderHotel</h1>
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
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Room </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Hotel </th>                                        
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Fullname </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Phone</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Checkin</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Checkout</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Quantity</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Price</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="oh" items="${orderhotel}">
                                        <tr role="row" class="odd">
                                            <td><img src="${oh.idroom.image}" height="50px" width="70px"/></td>
                                            <td>${oh.idroom.type}</td>
                                            <td>${oh.idroom.idhotel.name}</td>
                                            <td>${oh.fullname}</td>
                                            <td>${oh.phone}</td>
                                            <td>${oh.checkin}</td>
                                            <td>${oh.checkout}</td>
                                            <td>${oh.quantity}</td>
                                            <td>${oh.idroom.price}</td>
                                            <td>
                                                <c:set var="ctt" value="CHUATHANHTOAN" />
                                                <c:if test="${oh.status == ctt}">
                                                    <p style="color: red; text-align: center">Chưa thanh toán</p>
                                                </c:if>
                                                <c:set var="dtt" value="DATHANHTOAN" />
                                                <c:if test="${oh.status == dtt}">
                                                    <p style="color: green; text-align: center">Đã thanh toán</p>
                                                </c:if>
                                                    <c:set var="hh" value="HETHAN" />
                                                <c:if test="${oh.status == hh}">
                                                    <p style="color: orange; text-align: center">Hết hạn</p>
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

