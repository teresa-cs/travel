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
                    <h1>Discount Manage</h1>
                </div>

                <!-- Search -->
                <div class="col-sm-5">
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
                <div >
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Discount</button>
                </div>

            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- ======================================form add========================================== -->
    <div class="modal fade" id="modal-lg-add">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Discount</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form:form action="${action}" method="POST" modelAttribute="discount">  
                    <div class="modal-body">

                        <div class="form-group"  style="display: none; visibility: hidden">
                            <label>Code</label>
                            <form:input type="text" class="form-control" path="code" placeholder="Code" id="code"/>
                            <form:errors path="code" cssClass="text-danger" element="div"/>
                        </div>

                        <div class="form-group">
                            <label for="name">Promotion</label>
                            <form:input type="text" class="form-control" path="promotion" placeholder="Promontion"/>
                            <form:errors path="promotion" cssClass="text-danger" element="div"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">Percent</label>
                            <form:input type="number" class="form-control" path="percentPromotion" placeholder="Percent"/>
                            <form:errors path="percentPromotion" cssClass="text-danger" element="div"/>
                        </div>
                        
                    </div>

                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <input type="submit" class="btn btn-primary" value="Save"  id="randomcode" />
                    </div>
                </form:form> 
            </div>
        </div>
    </div>



    <!-- ======================================form ========================================== -->
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
                                        <td class="col-sm-2">${d.code}</td>
                                        <td class="col-sm-4">${d.promotion}</td>
                                        <td>${d.percentPromotion}</td>
                                        <td style="padding: 5px" class="col-sm-2">

                                            <button type="button"
                                                    class="btn btn-block bg-gradient-danger" onclick="deleteDiscountById(${d.id})">Delete</button>

                                        <td style="padding: 5px" class="col-sm-2">
                                            <button type="button"
                                                    class="btn btn-block bg-gradient-primary">Update</button>
                                        </td>
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


                                <c:forEach begin="1" end="${Math.ceil(counter/10)}" var="i">   
                                    <li class="paginate_button page-item active" onclick="sessionPage(${i})"><a class="page-link"  href="<c:url value="/admin/discount"/>?page=${i}">${i}</a></li>                                            
                                    </c:forEach>



                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>    
</div>
<script>
    function getListDiscount(page) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/listdiscount/` + page, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)

    }

    function deleteDiscounts(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/discounts/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function pageDiscount(page) {
        getListDiscount(page).then(res => console.log(res));
    }
    function deleteDiscountById(id) {
        let r = confirm("You want delete ?")
        if (r == true) {
            deleteDiscounts(id).then(res => {
                let page = sessionStorage.getItem('page');
                getListDiscount(page).then(res => {
                    if (res.length > 0) {
                        window.location.href = "http://localhost:8080/travel/admin/discount?page=" + page;
                    } else {
                        if (page > 1) {
                            window.location.href = "http://localhost:8080/travel/admin/discount?page=" + (page - 1);
                        } else {
                            window.location.href = "http://localhost:8080/travel/admin/discount";
                        }
                    }
                })

            })


        }
    }

    function sessionPage(page) {
        sessionStorage.setItem('page', page);
    }


</script>