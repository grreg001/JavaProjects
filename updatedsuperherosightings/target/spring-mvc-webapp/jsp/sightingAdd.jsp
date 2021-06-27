<%-- 
    Document   : sightingAdd
    Created on : May 9, 2021, 2:21:21 PM
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
                        <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>
                </ul>    
            </div>
                
           <div class="col-md-6">
            
                <h2>Add Sighting</h2>
                    <sf:form class="form-horizontal" role="form" modelAttribute="sighting" action="addSighting" method="POST">
                        <div class="form-group">
                            <label for="add-sighting-date" class="col-md-4 control-label">Sighting Date:</label>
                            <div class="col-md-8">
                                <input type="date" class="form-control" name="sightingDate" placeholder="YYYY-MM-DD" required />
                                
                            </div>
                        </div>
                        <spring:bind path="location">
                            <div class="form-group">
                                <label for="add-sighting-location" class="col-md-2 control-label">Sighting Location:</label>
                                <div class="col-md-8">
                                    <select name="loc" multiple>
                                        <c:forEach var="currentLocation" items="${locationList}">
                                            <option value="${currentLocation.locationId}">
                                                <c:out value="${currentLocation.locationName}"/>
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        
                         </spring:bind>
                        <spring:bind path="superhero">
                            <div class="form-group">
                                <label for="add-sighting-superhero" class="col-md-2 control-label">Superhero:</label>
                                <div class="col-md-8">
                                    <select name="chosenSuperhero" multiple>
                                        <c:forEach var="currentSuperhero" items="${superheroList}">
                                            <option value="${currentSuperhero.superheroId}">
                                                <c:out value="${currentSuperhero.heroName}"/>
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </spring:bind>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-8">
                                <input type="submit" class="btn btn-default" value="Add Sighting"/>
                            </div>
                        </div>
                       
                    </sf:form>
                    
            </div>
                
                
                
                
                
                
                
                
                
                
                
     <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>           
    </body>
</html>
