<%-- 
    Document   : tablehotel
    Created on : Nov 14, 2021, 10:05:21 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/admin/tablehotel" var="action" />

<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Hotel Manage</h1>
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
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Hotel</button>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
            <c:if test="${errMsg != null}">
                <div class="alert alert-danger">${errMsg}</div>
            </c:if>
            <c:if test="${success != null}">
                <div class="alert alert-success">${success}</div>
            </c:if>
        </section>
        <!-- ======================================form add========================================== -->
        <div class="modal fade" id="modal-lg-add">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Hotel</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form:form method="POST" action="${action}" modelAttribute="h" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Hotel Name</label>
                                <form:input type="text" class="form-control" path="name" placeholder="Hotel name"/>
                                <form:errors path="name" cssClass="text-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="name">Address</label>
                                <form:input type="text" class="form-control" path="address" placeholder="Address"/>
                                <form:errors path="address" cssClass="text-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="name">Rate</label>
                                <form:input type="text" class="form-control" path="rate" placeholder="Address"/>
                                <form:errors path="rate" cssClass="text-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="destination">Description</label>
                                <form:textarea type="text" class="form-control" path="description" placeholder="Description"></form:textarea>
                                <form:errors path="description" cssClass="alert alert-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">File input</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <form:input type="file" class="custom-file-input" id="exampleInputFile" path="file" />
                                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Save"/>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>


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
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Image</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Name</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Address</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Rate</th>                                        
                                        <th class="sorting col-sm-5" tabindex="0" aria-controls="example2" rowspan="1">
                                            Description</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                            Delete</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                            Update</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                            Room</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="h" items="${hotel}">
                                        <tr role="row" class="odd">
                                            <td><img src="${h.avt}" height="50px" width="70px"/></td>
                                            <td>${h.name}</td>
                                            <td>${h.address}</td>
                                            <td>${h.rate}</td>
                                            <td class="col-sm-7">${h.description}</td>                                         
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-danger" onclick="deleteHotel(${h.id})">Delete</button>
                                            </td>
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-primary" onclick="getHotel(${h.id})" data-toggle="modal" data-target="#modal-lg">Update</button>
                                            </td>
                                            <td style="padding: 5px">
                                                <a href="<c:url value="/admin/tablehotel/hotel-${h.id}"/>">
                                                    <button type="button"
                                                            class="btn btn-block bg-gradient-secondary" >Room</button></a>
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
                                        <li class="paginate_button page-item active" onclick="sessionPage(${i})"><a class="page-link" href="<c:url value="/admin/tablehotel"/>?page=${i}">${i}</a></li>                                            
                                        </c:forEach>


                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>


<script>
    function getListHotels(page) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/listhotels/` + page, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)

    }

    function deleteHotelById(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/hotels/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function getHotelById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/hotels/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function updateHotelById(id, name, address, rate, description) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "name": name,
                "address": address,
                "rate": rate,
                "description": description
            })
        }
        return fetch(`http://localhost:8080/travel/api/hotels/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function deleteHotel(id) {
        let r = confirm("You want delete ?")
        if (r == true) {
            deleteHotelById(id).then(res => {
                directionPage();
                toastr.success(`Delete success`);
            })
        }
    }

    function directionPage() {
        let page = sessionStorage.getItem('page');
        if (page == undefined) {
            window.location.href = "http://localhost:8080/travel/admin/tablehotel";
        } else {
            getListHotels(page).then(res => {
                if (res.length > 0) {
                    window.location.href = "http://localhost:8080/travel/admin/tablehotel?page=" + page;
                } else {
                    if (page > 1) {
                        window.location.href = "http://localhost:8080/travel/admin/tablehotel?page=" + (page - 1);
                    } else {
                        window.location.href = "http://localhost:8080/travel/admin/tablehotel";
                    }
                }
            })
        }
    }

    function sessionPage(page) {
        sessionStorage.setItem('page', page);
    }

    function getHotel(id) {
        getHotelById(id).then(res => {
            document.getElementById("name").value = res.name;
            document.getElementById("address").value = res.address;
            document.getElementById("rate").value = res.rate;
            document.getElementById("descriptionHotel").value = res.description;
            sessionStorage.setItem('idHotel', res.id);
        })
    }

    function updateHotel() {
        const id = sessionStorage.getItem('idHotel');
        const name = document.getElementById("name").value;
        const address = document.getElementById("address").value;
        const rate = document.getElementById("rate").value;
        const description = document.getElementById("descriptionHotel").value;
        updateHotelById(id, name, address, rate, description).then(res => {
            toastr.success(`Update success`);
            localStorage.removeItem("idHotel");
            directionPage();
        });
    }


</script>