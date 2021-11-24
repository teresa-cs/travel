<%-- 
Document   : tabletour
Created on : Sep 25, 2021, 11:45:44 PM
Author     : anhtu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/tabletour" var="action" />


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
                            <h1>Tour Manage</h1>
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
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Tour</button>
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
                            <h4 class="modal-title">Tour</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form:form method="POST" action="${action}" modelAttribute="t" enctype="multipart/form-data">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="name">Tour Name</label>
                                    <form:input type="text" class="form-control" path="name" placeholder="Tour name"/>
                                    <form:errors path="name" cssClass="text-danger" element="div"/>
                                </div>
                                <div class="form-group">
                                    <label>Start Date:</label>
                                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                        <form:input type="date" path="begindate" class="form-control datetimepicker-input" data-target="#reservationdate" />
                                        <form:errors path="begindate" cssClass="alert alert-danger" element="div"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>End Date:</label>
                                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                        <form:input type="date" path="enddate" class="form-control datetimepicker-input" data-target="#reservationdate"  />
                                        <form:errors path="enddate" cssClass="alert alert-danger" element="div"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name">Days</label>
                                    <form:input path="days" type="number" class="form-control" placeholder="Days" id="days"/>
                                </div>
                                <div class="form-group">
                                    <label for="meetingplace">Meeting Place</label>
                                    <form:input path="meetingplace" type="text" class="form-control"  placeholder="Meeting Place"/>
                                    <form:errors path="meetingplace" cssClass="alert alert-danger" element="div"/>
                                </div>

                                <div class="form-group">
                                    <label for="price">Price</label>
                                    <form:input type="text" path="price" class="form-control" placeholder="Price"/>
                                    <form:errors path="price" cssClass="alert alert-danger" element="div"/>
                                </div>

                                <div class="form-group">
                                    <label for="price">Place</label>
                                    <form:select path="idPlace" class="form-control">
                                        <c:forEach items="${places}" var="p" >
                                            <option value="${p.id}">${p.name}</option>                                      
                                        </c:forEach>
                                    </form:select>
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
            <!-- ======================================form update========================================== -->
            <div class="modal fade" id="modal-lg">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Update Tour</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <form>
                                <div class="form-group">
                                    <label for="name">Tour Name</label>
                                    <input type="text" class="form-control" placeholder="Tour name" id="name" value=""/>
                                </div>
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                        <input type="date"" class="form-control datetimepicker-input" " id="begindate"  />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>End Date</label>
                                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                        <input type="date"" class="form-control datetimepicker-input" " id="enddate"  />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name">Days</label>
                                    <input type="number" class="form-control" placeholder="Days" id="days"/>
                                </div>
                                <div class="form-group">
                                    <label for="meetingplace">Meeting Place</label>
                                    <input type="text" class="form-control"  placeholder="Meeting Place" id="meetingplace" value=""/>
                                </div>
                                <div class="form-group">
                                    <label for="price">Price</label>
                                    <input type="text" class="form-control" placeholder="Price" id="price" value=""/>
                                </div>
                                <div class="form-group">
                                    <label for="area">Area</label>
                                    <select id="area"  class="form-control" >
                                        <c:forEach items="${places}" var="place">
                                            <option value="${place.id}">${place.name}</option>
                                        </c:forEach>    
                                    </select> 
                                </div>

                            </form> 

                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateTour()">Update</button>
                        </div>
                    </div>
                </div>
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
                                                Image</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                BeginDate</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                EndDate</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Days</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                MeetingPlace</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Place</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Price</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Delete</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                                Update</th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1">
                                                Details</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach var="t" items="${tour}">
                                            <tr role="row" class="odd">
                                                <td><img src="${t.avt}" height="50px" width="70px"/></td>
                                                <td>${t.name}</td>
                                                <td>${t.begindate}</td>
                                                <td>${t.enddate}</td>
                                                <td>${t.days}</td>
                                                <td>${t.meetingplace}</td>
                                                <td>${t.idPlace.name}</td>
                                                <td>${t.price}</td>
                                                <td style="padding: 5px">
                                                    <button type="button"
                                                            class="btn btn-block bg-gradient-danger" onclick="deleteTour(${t.id})">Delete</button>
                                                </td>
                                                <td style="padding: 5px">
                                                    <button type="button"
                                                            class="btn btn-block bg-gradient-primary" onclick="getTour(${t.id})" data-toggle="modal" data-target="#modal-lg">Update</button>
                                                </td>
                                                <td style="padding: 5px">
                                                    <a href="<c:url value="/admin/tabletour/tour-${t.id}"/>">
                                                        <button type="button"
                                                                class="btn btn-block bg-gradient-secondary" >Details</button></a>
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
                                            <li class="paginate_button page-item active"  onclick="sessionPage(${i})"><a class="page-link" href="<c:url value="/admin/tabletour"/>?page=${i}">${i}</a></li>                                            
                                            </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    </body>
</html>
<script>
    function getListTours(page) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/listtours/` + page, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)

    }

    function getTourById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/tours/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function deleteTourById(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/tours/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function updateTourById(id, name, begindate, enddate, days, meetingplace, price, idPlace) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "name": name,
                "begindate": begindate,
                "enddate": enddate,
                "days": days,
                "meetingplace": meetingplace,
                "price": price,
                "idPlace": idPlace
            })
        }
        return fetch(`http://localhost:8080/travel/api/tours/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function sessionPage(page) {
        sessionStorage.setItem('page', page);
    }

    function deleteTour(id) {
        let r = confirm("You want delete ?")
        if (r == true) {
            deleteTourById(id).then(res => {
                toastr.success(`Delete success`);
                directionPage();
            })
        }
    }

    function directionPage() {
        let page = sessionStorage.getItem('page');
        if (page == undefined) {
            window.location.href = "http://localhost:8080/travel/admin/tabletour";
        } else {
            getListTours(page).then(res => {
                if (res.length > 0) {
                    window.location.href = "http://localhost:8080/travel/admin/tabletour?page=" + page;
                } else {
                    if (page > 1) {
                        window.location.href = "http://localhost:8080/travel/admin/tabletour?page=" + (page - 1);
                    } else {
                        window.location.href = "http://localhost:8080/travel/admin/tabletour";
                    }
                }
            })
        }
    }

    function getTour(id) {
        getTourById(id).then(res => {
            document.getElementById("name").value = res.name;
            document.getElementById("meetingplace").value = res.meetingplace;
            document.getElementById("price").value = res.price;
            document.getElementById("days").value = res.days;
            document.getElementById("begindate").value = res.begindate;
            document.getElementById("enddate").value = res.enddate;
            document.getElementById("area").value = res.idPlace.id;
            sessionStorage.setItem('idTour', res.id);
        })
    }


    function updateTour() {
        const name = document.getElementById("name").value;
        const begindate = document.getElementById("begindate").value;
        const enddate = document.getElementById("enddate").value;
        const days = document.getElementById("days").value;
        const meetingplace = document.getElementById("meetingplace").value;
        const price = document.getElementById("price").value;
        const idPlace = document.getElementById("area").value;
        updateTourById(sessionStorage.getItem('idTour'), name, begindate, enddate, days, meetingplace, price, idPlace).then(res => {
            toastr.success(`Update tour success`);
            localStorage.removeItem("idTour");
            directionPage();
        })
    }
</script>