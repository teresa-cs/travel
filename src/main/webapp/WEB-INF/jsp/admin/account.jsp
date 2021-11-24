<%-- 
    Document   : account
    Created on : Nov 22, 2021, 9:56:30 PM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/admin/account" var="action" />

<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Account Manage</h1>
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
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Account</button>
                </div>

            </div>
        </div><!-- /.container-fluid -->
    </section>
        <!-- ======================================Detail ========================================== -->
        <div class="modal fade" id="modal-lg-add">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add account</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form:form method="POST" action="${action}" modelAttribute="account" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Username</label>
                                <form:input path="username" type="text" class="form-control" placeholder="username" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="name">Password</label>
                                <form:input path="password" type="password" class="form-control" placeholder="password" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="name">Role</label>
                                <form:select path="roleId" class="form-control">
                                    <c:forEach items="${roles}" var="r" >
                                        <c:if test="${r.id != 1 && r.id!=5 }">
                                            <option value="${r.id}">${r.position}</option>
                                        </c:if>                                        
                                    </c:forEach>
                                </form:select>
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
                                            Username</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Fullname</th>
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
                                    <c:forEach var="u" items="${users}">
                                    <tr role="row" class="odd">
                                        <td><img src="${u.avt}" height="50px" width="50px" style="border-radius: 50%"/></td>
                                        
                                        <td style="padding: 5px" class="col-sm-2">

                                            <button type="button"
                                                    class="btn btn-block bg-gradient-danger">Delete</button>

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
                </div>
            </div>
        </section>
    </div>
</body>
