<%-- 
    Document   : locationEdit
    Created on : May 9, 2021, 2:20:38 PM
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
                
           <div class="col-md-12">
            
                <h2>Edit Location</h2>
                    <sf:form class="form-horizontal" role="form" modelAttribute="location" action="editLocation" method="POST">
                        
                        <div class="form-group">
                            <label for="add-location-name" class="col-md-4 control-label">Location Name:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="locationName" placeholder="${location.locationName}"/>
                                <sf:errors path="locationName" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-location-description" class="col-md-4 control-label">Description:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="locationDescription" placeholder="${location.locationDescription}"/>
                                <sf:errors path="locationDescription" cssclass="error"></sf:errors>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-location-street" class="col-md-4 control-label">Street:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="locationStreet" placeholder="${location.locationStreet}"/>
                                <sf:errors path="locationStreet" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-location-city" class="col-md-4 control-label">City:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="locationCity" placeholder="${location.locationCity}"/>
                                <sf:errors path="locationCity" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-location-state" class="col-md-4 control-label">State:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="locationState" placeholder="${location.locationState}"/>
                                <sf:errors path="locationState" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-location-zipcode" class="col-md-4 control-label">Zip Code:</label>
                            <div class="col-md-8">
                                <sf:input type="number" class="form-control" path="zipcode" placeholder="${location.zipcode}"/>
                                <sf:errors path="zipcode" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-latitude" class="col-md-4 control-label">Latitude:</label>
                            <div class="col-md-8">
                                <sf:input type="decimal" class="form-control" path="latitude" placeholder="${location.latitude}"/>
                                <sf:errors path="latitude" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-longitude" class="col-md-4 control-label">Longitude:</label>
                            <div class="col-md-8">
                                <sf:input type="decimal" class="form-control" path="longitude" placeholder="${location.longitude}"/>
                                <sf:errors path="longitude" cssclass="error"></sf:errors>
                                <sf:hidden path="locationId"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-8">
                                <input type="submit" class="btn btn-default" value="Update Location"/>
                            </div>
                        </div>
                      
                    </sf:form>
                   
            </div>
             
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>           
    </body>
</html>
