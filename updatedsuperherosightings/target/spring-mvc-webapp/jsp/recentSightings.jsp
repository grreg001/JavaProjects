<%-- 
    Document   : recentSightings
    Created on : May 18, 2021, 6:12:01 PM
    Author     : greta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <center><h1>SUPERHERO SIGHTINGS TRACKER</h1></center>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                	<li role="presentation"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/recentSightings">Recent Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/superhero">Superheros</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/location">Locations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>

                </ul>    
            </div>
                        <center><h2>Newsfeed</h2></center>
                        
             <div class="col-md-9" id="right-side">
                <h2>Recent Sightings</h2>
                <table id="locationTable" class="table table-hover">
                    <tr>
                        <th width="10%">Sighting ID</th>
                        <th width="10%">Location</th>
                        <th width="10%">Date</th>
                        
                    </tr>
                    <c:forEach var="currentSighting" items="${recentSightings}">
                        <tr>
                            <td>
                                <a href="displaySightingDetails?locationId=${currentLocation.sightingId}">
                                    <c:out value="${currentSighting.sightingId}"/>
                                </a>
                                
                            </td>
                            <td>
                                <c:out value="${currentSighting.location.locationName}"/>
                            </td>
                            <td>
                                <c:out value="${currentSighting.sightingDate}"/>
                            </td>
                            
                            
                        </tr>
                    </c:forEach>
                </table>
                
            </div>           
                        
                        
                        
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
