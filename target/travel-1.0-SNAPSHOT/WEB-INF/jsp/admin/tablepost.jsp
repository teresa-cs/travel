<%-- 
    Document   : tablepost
    Created on : Nov 15, 2021, 10:56:05 AM
    Author     : anhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/admin/tablepost" var="action" />

<body>
    <!--Content-wrapper-->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Post Manage</h1>
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
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-lg-add">Add Post</button>
                    </div>
                </div>
            </div><!-- /.container-fluid -->

        </section>


        <!-- ======================================form add========================================== -->
        <div class="modal fade" id="modal-lg-add">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Post</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form:form method="POST" action="${action}" modelAttribute="p" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Title</label>
                                <form:input type="text" class="form-control" path="title" placeholder="Title"/>
                                <form:errors path="title" cssClass="text-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="intro">Intro</label>
                                <form:textarea type="text" class="form-control" path="intro" placeholder="Intro"></form:textarea>
                                <form:errors path="intro" cssClass="alert alert-danger" element="div"/>
                            </div>

                            <div class="form-group">
                                <label for="Content">Content</label>
                                <form:textarea type="text" class="form-control" path="content" placeholder="Content"></form:textarea>
                                <form:errors path="content" cssClass="alert alert-danger" element="div"/>
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
                                <label for="title">Title</label>
                                <input  type="text" class="form-control" placeholder="Title" id="title" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="intro"> Intro </label>
                                <textarea style="height: 100px" type="text" class="form-control" placeholder="Intro" id="intro"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="Content">Content</label>
                                <textarea style="height: 200px" type="text" class="form-control" placeholder="Content" id="content"></textarea>
                            </div>

                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Save" onclick="updatePost()"/>
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
                                            Title</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Intro</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                            colspan="1">
                                            Content</th>                                        
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                            Delete</th>
                                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                            Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="p" items="${posts}">
                                        <tr role="row" class="odd">
                                            <td><img src="${p.image}" height="50px" width="70px"/></td>
                                            <td>${p.title}</td>
                                            <td>${p.intro}</td>
                                            <td>${p.content}</td>                                       
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-danger" onclick="deletePost(${p.id})">Delete</button>
                                            </td>
                                            <td style="padding: 5px">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-primary"  onclick="getPost(${p.id})" data-toggle="modal" data-target="#modal-lg">Update</button>
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

                                    <c:forEach begin="1" end="${Math.ceil(counter/4)}" var="i">   
                                        <li class="paginate_button page-item active" onclick="sessionPage(${i})"><a class="page-link" href="<c:url value="/admin/tablepost"/>?page=${i}">${i}</a></li>                                            
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
    function getListPosts(page) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/listpost/` + page, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)

    }

    function deletePostById(id) {
        let fecthDate = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/posts/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function getPostById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8080/travel/api/posts/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function updatePostById(id, title, intro, content) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "title": title,
                "intro": intro,
                "content": content
            })
        }
        return fetch(`http://localhost:8080/travel/api/posts/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function deletePost(id) {
        let r = confirm("You want delete ?")
        if (r == true) {
            deletePostById(id).then(res => {
                directionPage();
                toastr.success(`Delete success`);
            })
        }
    }

    function directionPage() {
        let page = sessionStorage.getItem('page');
        if (page == undefined) {
            window.location.href = "http://localhost:8080/travel/admin/tablepost";
        } else {
            getListPosts(page).then(res => {
                if (res.length > 0) {
                    window.location.href = "http://localhost:8080/travel/admin/tablepost?page=" + page;
                } else {
                    if (page > 1) {
                        window.location.href = "http://localhost:8080/travel/admin/tablepost?page=" + (page - 1);
                    } else {
                        window.location.href = "http://localhost:8080/travel/admin/tablepost";
                    }
                }
            })
        }
    }


    function sessionPage(page) {
        sessionStorage.setItem('page', page);
    }

    function getPost(id) {
        getPostById(id).then(res => {
            document.getElementById("title").value = res.title;
            document.getElementById("intro").value = res.intro;
            document.getElementById("content").value = res.content;
            sessionStorage.setItem('idPost', res.id);
        })
    }

    function updatePost() {
        const id = sessionStorage.getItem('idPost');
        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;
        const intro = document.getElementById("intro").value;
        updatePostById(id, title, intro, content).then(res => {
            toastr.success(`Update success`);
            localStorage.removeItem("idPost");
            directionPage();
        });
    }

</script>