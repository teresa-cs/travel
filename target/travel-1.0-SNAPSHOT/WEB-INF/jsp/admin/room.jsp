<%-- 
    Document   : room
    Created on : Nov 11, 2021, 3:17:59 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/tablehotel/hotel-${hotel.id}" var="action" />

<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-11">
                        <h1>Hotel ${hotel.name}</h1>
                    </div>
                    <!-- Search -->
                    <div >
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Room</button>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- ======================================Detail ========================================== -->
        <div class="modal fade" id="modal-lg-add">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Room</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <form:form action="${action}" modelAttribute="room" enctype="multipart/form-data">
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="name"> Type</label>
                                <form:input type="type" path="type" class="form-control" placeholder="Type" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="destination">Description</label>
                                <form:textarea type="text" path="description" class="form-control" placeholder="Description"></form:textarea>
                                </div>
                                <div class="form-group">
                                    <label for="maximum"> Maximum</label>
                                <form:input type="number" path="maximum" class="form-control" placeholder="Maximum" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="price"> Price</label>
                                <form:input type="number" path="price" class="form-control" placeholder="Price" value=""/>
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
                                <label for="name">Room Name</label>
                                <input type="text" class="form-control" placeholder="RoomName" id ="typeRoom" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="destination">Description</label>
                                <textarea type="text" class="form-control" placeholder="Description" id="descriptionRoom"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="maximum">Maximum</label>
                                <input type="number" class="form-control" placeholder="Maximum" id ="maximumRoom" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number" class="form-control" placeholder="Price" id ="priceRoom" value=""/>
                            </div>
                        </form> 

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateRoom()">Save</button>
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
                                            Type</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Description</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Max</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Price</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Delete</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="2"
                                            colspan="1">
                                            Update</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="room" items="${hotel.roomCollection}">
                                        <tr role="row" class="odd">
                                            <td><img src="${room.image}" height="50px" width="70px"/></td>
                                            <td>${room.type}</td>
                                            <td>${room.description}</td>
                                            <td>${room.maximum}</td>
                                            <td>${room.price}</td>
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-danger" onclick="deleteRoom(${room.id})">Delete</button>
                                            </td>
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-primary" onclick="getRoom(${room.id})" data-toggle="modal" data-target="#modal-lg-update">Update</button>
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

    function deleteRoomById(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/rooms/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function getRoomById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/rooms/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function updateRoomById(id, type, description, max, price) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "type": type,
                "description": description,
                "maximum": max,
                "price": price
            })
        }
        return fetch(`http://localhost:8080/travel/api/rooms/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function deleteRoom(id) {
        let r = confirm("You want delete ?")
        if (r == true) {
            deleteRoomById(id).then(res => {
                toastr.success(`Delete success`);
                window.location.href = "http://localhost:8080/travel/admin/tablehotel/hotel-${hotel.id}";
            })
        }
    }


    function getRoom(id) {
        getRoomById(id).then(res => {
            document.getElementById("typeRoom").value = res.type;
            document.getElementById("descriptionRoom").value = res.description;
            document.getElementById("maximumRoom").value = res.maximum;
            document.getElementById("priceRoom").value = res.price;
            sessionStorage.setItem('idRoom', res.id);
        })
    }

    function  updateRoom() {
        const type = document.getElementById("typeRoom").value;
        const description = document.getElementById("descriptionRoom").value;
        const max = document.getElementById("maximumRoom").value;
        const price = document.getElementById("priceRoom").value;
        console.log(sessionStorage.getItem('idRoom'),type, description, max, price);
        updateRoomById(sessionStorage.getItem('idRoom'),type, description, max, price).then(res =>{
            toastr.success(`Update room success`);
            localStorage.removeItem("idRoom");
            window.location.href = "http://localhost:8080/travel/admin/tablehotel/hotel-${hotel.id}";
        })
    }
</script>
