<%-- 
    Document   : receipt
    Created on : Nov 20, 2021, 2:17:09 PM
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
                        <h1>Receipt</h1>
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
                                            Tour </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Date </th>                                        
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Quantity </th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Total</th>
                                        <th class="sorting col-sm-1" tabindex="0" aria-controls="example2" rowspan="1">
                                            Pay</th>
                                    </tr>
                                </thead>
                                <tbody>



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