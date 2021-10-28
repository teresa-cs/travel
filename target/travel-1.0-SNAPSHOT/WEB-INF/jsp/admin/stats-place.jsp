<%-- 
    Document   : stats-place
    Created on : 26 Oct 2021, 22:32:56
    Author     : trang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<c:url value="/admin/stats-place" var="action" />

<!DOCTYPE html>
<html>
    <head></head>
    <div class="content-wrapper">

        <div class="card-body" style="margin-left: 100px; padding: 5px;">
            
            
            <div class="col-md-10" >
                <canvas id="myChart"></canvas>
            </div>         <div class="row" style="margin-top: 40px">
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
                                    Tour-Quantity</th>

                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="t" items="${statsplace}">
                                <tr role="row" class="odd">
                                    <td>${t[0]}</td>
                                    <td>${t[1]}</td>
                                    <td>${t[2]}</td>

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
       let placeLabels=[], placeInfo=[];
       <c:forEach var="t" items="${statsplace}">
    placeLabels.push('${t[1]}')
    placeInfo.push(${t[2]})
    </c:forEach>
        window.onload= function(){
            placeChart("myChart",placeLabels,placeInfo)
        }
    </script>
    <script src="../template/js/stats.js"></script>