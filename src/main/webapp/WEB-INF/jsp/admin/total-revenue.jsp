<%-- 
    Document   : total-revenue
    Created on : 27 Oct 2021, 22:41:14
    Author     : trang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<c:url value="/admin/total-revenue" var="action" />

<!DOCTYPE html>
<html>
    <head></head>
    <div class="content-wrapper">

        <div class="card-body" style="margin-left: 90px; padding: 20px;">
            
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Total Revenue</h1>
                        </div>

                        <!-- Search -->
                        <div class="col-sm-6">
                            <form>
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" name="kw" type="search" placeholder="Search" aria-label="Search" >
                                </div>
                                <div class="input-group input-group-sm" style="padding: 20px;">
                                    <input type="date" name="fromDate" class="form-control"/>
                                    <span class="mx-2"> - </span>
                                    <input type="date" name="toDate" class="form-control"/>

                                    <input type="submit" value="Statistic" class="btn btn-info" style="margin-left: 30px"/>
                                </div>

                            </form>
                        </div>

                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <div class="d-flex justify-content-center form">
                <form action="" class="text-center">

                </form>
            </div><!-- comment -->

            <div class="col-md-10"  >
                <canvas id="myChart"></canvas>
            </div>
            
            
            
            
            <div class="row" style="margin-top: 40px">
                <div class="col-sm-10" >
                    <table id="example2" class="table table-bordered table-hover dataTable" role="grid"
                           aria-describedby="example2_info">
                        <thead>
                            <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1"
                                    colspan="1">
                                    Id</th>
                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                    colspan="1">
                                    Name</th>
                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                    colspan="1">
                                    Total Revenue </th>

                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="t" items="${totalrevenue}">
                                <tr role="row" class="odd">
                                    <td>${t[0]}</td>
                                    <td>${t[1]}</td>
                                    <td>${t[2]} $</td>

                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
 
</html>
<script>
       let placeLabels=[], totalInfo=[];
       <c:forEach var="t" items="${totalrevenue}">
    placeLabels.push('${t[1]}')
    totalInfo.push(${t[2]})
    </c:forEach>
        window.onload= function(){
            totalChart("myChart",placeLabels,totalInfo)
        }
    </script>
    <script src="../template/js/stats.js"></script>
