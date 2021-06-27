<%-- 
    Document   : sighting
    Created on : May 9, 2021, 2:09:57 PM
    Author     : greta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Superhero</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

    <style>
        
    </style>
    </head>
    <body>
        <div class="container">
            <center><h1>SUPERHERO SIGHTINGS TRACKER</h1></center>
            <hr/>
            
            <div class="navbar">
                <ul class="nav nav-tabs">
                	<li role="presentation"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/recentSightings">Recent Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/superhero">Superheros</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/location">Locations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>
                </ul>    
            </div>
                
           <div class="row">
            
            <div class="col-md-3" id="left-side">
                <div class="row">
                    <!-- link to sightingAdd jsp -->
                    <form action="${pageContext.request.contextPath}/addSightingPage" method="GET"> 
                        <button>Add Sighting</button>
                    </form>
                </div>
            </div>
            
                
                
            <div class="col-md-9" id="right-side">
                <h2>Sightings</h2>
                <table id="sightingTable" class="table table-hover">
                    <tr>
                        <th width="30%">ID</th>
                        <th width="30%">Location</th>
                        <th width="30%">Date</th>
                        <th width="5%"></th>
                        <th width="5%"></th>
                    </tr>
                    <c:forEach var="currentSighting" items="${sightingList}">
                        <tr>
                            <td>
                                <a href="displaySightingDetails?sightingId=${currentSighting.sightingId}">
                                    <c:out value="${currentSighting.sightingId}"/>
                                </a>
                            </td>
                            <td>
                                <c:out value="${currentSighting.location.locationName}"/>
                            </td>
                            <td>
                                <c:out value="${currentSighting.sightingDate}"/>
                            </td>
                            <td>
                                <a href="displayEditSightingForm?sightingId=${currentSighting.sightingId}">
                                    Edit
                                </a>
                            </td>
                            <td>
                                <a href="deleteSighting?sightingId=${currentSighting.sightingId}">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                
                <c:forEach var="currentPicture" items="${pictureList}">
                    <hr>
                    ${currentPicture.title}<br>
                    <img src="${pageContext.request.contextPath}/${currentPicture.filename}"
                     class="img-thumbnail" alt="${currentPicture.title}" width="300" height="300"><br> 
                </c:forEach>
                
            </div>
               
        </div>
            
        </div>
     <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>               
    </body>
</html>
