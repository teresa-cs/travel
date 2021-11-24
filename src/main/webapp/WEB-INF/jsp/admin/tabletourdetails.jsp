<%-- 
    Document   : tabletourdetails
    Created on : Nov 14, 2021, 4:57:47 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/tabletour/tour-${tour.id}" var="action" />
<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-11">
                        <h1>${tour.name}</h1>
                    </div>
                    <!-- Search -->
                    <div >
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Detail</button>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- ======================================Detail ========================================== -->
        <div class="modal fade" id="modal-lg-add">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Detail</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form:form action="${action}" modelAttribute="detail" enctype="multipart/form-data">
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="name"> Name</label>
                                <form:input type="text" path="name" class="form-control" placeholder="Name" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="destination">Description</label>
                                <form:textarea type="text" path="description" class="form-control" placeholder="Description"></form:textarea>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                        <form:input type="file" path="file" class="custom-file-input" id="exampleInputFile"  style="opacity : 100"/>
                                        <label class="custom-file-label" for="exampleInputFile"></label>
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
        <!-- ======================================Update ========================================== -->
        <div class="modal fade" id="modal-lg-update">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Detail</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form>
                            <div class="form-group">
                                <label for="name"> Name</label>
                                <input type="text" class="form-control" placeholder="name" id ="nameDetail" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="destination">Description</label>
                                <textarea type="text" class="form-control" placeholder="Description" id="descriptionDetail"></textarea>
                            </div>
                        </form> 

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateTourDetail()">Save</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- ======================================table========================================== -->

        <section class="content">
            <div class="card-body">
                <div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="example2" class="table table-bordered table-hover dataTable" role="grid"
                                   aria-describedby="example2_info">
                                <thead style="text-align: center">
                                    <tr role="row">
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Image</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Tourist Attraction</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Description</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Delete</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="t" items="${tour.tourDetailCollection}">
                                        <tr role="row" class="odd">
                                            <td><img src="${t.image}" height="50px" width="70px"/></td>
                                            <td>${t.name}</td>
                                            <td>${t.description}</td>                                        
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-danger" onclick="deleteTourDetail(${t.id})">Delete</button>
                                            </td>
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-primary" onclick="getTourDetail(${t.id})" data-toggle="modal" data-target="#modal-lg-update">Update</button>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>

<script>
    function getTourDetailById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/tourdetails/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function deleteTourDetailById(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/tourdetails/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function updateTourDetailById(id, name, description) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "name": name,
                "description": description
            })
        }
        return fetch(`http://localhost:8080/travel/api/tourdetails/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }



    function getTourDetail(id) {
        getTourDetailById(id).then(res => {
            document.getElementById("nameDetail").value = res.name;
            document.getElementById("descriptionDetail").value = res.description;
            sessionStorage.setItem('idTourDetail', res.id);
        })
    }

    function deleteTourDetail(id) {
        let r = confirm("You want delete ?");
        if (r == true) {
            deleteTourDetailById(id).then(res => {
                toastr.success(`Delete success`);
                window.location.href = "http://localhost:8080/travel/admin/tabletour/tour-${tour.id}";
            })
        }
    }

    function updateTourDetail() {
        const name = document.getElementById("nameDetail").value;
        const description = document.getElementById("descriptionDetail").value;
        console.log(sessionStorage.getItem('idTourDetail'), name, description);
        updateTourDetailById(sessionStorage.getItem('idTourDetail'), name, description).then(res => {
            toastr.success(`Update detail of tour success`);
            localStorage.removeItem("idTourDetail");
            window.location.href = "http://localhost:8080/travel/admin/tabletour/tour-${tour.id}";
        })
    }

</script>