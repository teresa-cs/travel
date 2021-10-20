<%-- 
    Document   : discount
    Created on : Oct 12, 2021, 1:49:55 AM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/discount" var="action" />

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
    <h1>aaaa ${a.id}</h1>
    <!-- ======================================form ========================================== -->
    <div class="card-body" style="margin: 0px; padding: 5px;">
        <form:form action="${action}" method="POST" modelAttribute="discount">  
            <div class="row mb-3">
                <div class="col-sm-3"  style="display: none; visibility: hidden">
                    <div class="form-group">
                        <label>Code</label>
                        <form:input type="text" class="form-control" path="code" placeholder="Code" id="code"/>
                        <form:errors path="code" cssClass="text-danger" element="div"/>
                    </div>
                </div>
                    <div class="col-sm-5">
                    <div class="form-group">
                        <label for="name">Promotion</label>
                        <form:input type="text" class="form-control" path="promotion" placeholder="Promontion"/>
                        <form:errors path="promotion" cssClass="text-danger" element="div"/>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="form-group">
                        <label for="name">Percent</label>
                        <form:input type="number" class="form-control" path="percentPromotion" placeholder="Percent"/>
                        <form:errors path="percentPromotion" cssClass="text-danger" element="div"/>
                    </div>
                </div>
                <div>
                    <input type="submit" class="btn btn-primary" value="Submit" style="margin-top: 30px; margin-left: 30px;" id="randomcode" >
                </div>

            </div>
        </form:form> 
    </div>
    <script>
        const random = document.getElementById("randomcode");
        const code = document.getElementById("code");
        random.addEventListener("click", () => {
            code.value = Math.random().toString(36).substring(2, 10).toUpperCase();
        });

    </script>
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
                                    <th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Id</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Code</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Promotion</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Percent</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        Delete</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        Update</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="d" items="${discounts}">
                                    <tr role="row" class="odd">
                                        <td class="col-sm-1">${d.id}</td>
                                        <td class="col-sm-2">${d.code}</td>
                                        <td class="col-sm-4">${d.promotion}</td>
                                        <td>${d.percentPromotion}</td>
                                        <td style="padding: 5px" class="col-sm-2">
                                            <button type="button"
                                                    class="btn btn-block bg-gradient-danger">Delete</button>
                                        </td>
                                        <td style="padding: 5px" class="col-sm-2">
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
                                            <li class="paginate_button page-item active"><a class="page-link" href="<c:url value="/admin/discount"/>?page=${i}">${i}</a></li>                                            
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
