<%-- 
    Document   : location
    Created on : May 9, 2021, 1:52:06 PM
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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/location">Locations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>
                </ul>    
            </div>
            
            <div class="row">
            
            <div class="col-md-3" id="left-side">
                <div class="row">
                    <!-- link to locationAdd jsp -->
                    <form action="${pageContext.request.contextPath}/addLocationPage" method="GET"> 
                        <button>Add Location</button>
                    </form>
                </div>
            </div>
            
                
                
            <div class="col-md-9" id="right-side">
                <h2>Locations</h2>
                <table id="locationTable" class="table table-hover">
                    <tr>
                        <th width="10%">Location Name</th>
                        <th width="10%">Description</th>
                        <th width="10%">Street</th>
                        <th width="10%">City</th>
                        <th width="10%">State</th>
                        <th width="10%">Zip code</th>
                        <th width="10%">Latitude</th>
                        <th width="10%">Longitude</th>
                        <th width="10%"></th>
                        <th width="10%"></th>
                    </tr>
                    <c:forEach var="currentLocation" items="${locationList}">
                        <tr>
                            <td>
                                <a href="displayLocationDetails?locationId=${currentLocation.locationId}">
                                    <c:out value="${currentLocation.locationName}"/>
                                </a>
                            </td>
                            <td>
                                <c:out value="${currentLocation.locationDescription}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.locationStreet}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.locationCity}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.locationState}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.zipcode}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.latitude}"/>
                            </td>
                            <td>
                                <c:out value="${currentLocation.longitude}"/>
                            </td>
                            <td>
                                <a href="editLocationPage?locationId=${currentLocation.locationId}">
                                    Edit
                                </a>
                            </td>
                            <td>
                                <a href="deleteLocation?locationId=${currentLocation.locationId}">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                
            </div>
               
        </div>
            
        </div>
            
     <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>   
    </body>
</html>
