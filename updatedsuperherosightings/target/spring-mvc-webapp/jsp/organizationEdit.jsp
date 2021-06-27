<%-- 
    Document   : organizationEdit
    Created on : May 9, 2021, 2:21:06 PM
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
            
                <h2>Edit Organization</h2>
                    <sf:form class="form-horizontal" role="form" modelAttribute="organization" action="editOrganization" method="POST">
                        <div class="form-group">
                            <label for="add-organization-name" class="col-md-4 control-label">Organization Name:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="organizationName" placeholder="Organization Name"/>
                                <sf:errors path="organizationName" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-description" class="col-md-4 control-label">Description:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="organizationDescription" placeholder="Description"/>
                                <sf:errors path="organizationDescription" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-street" class="col-md-4 control-label">Street:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="organizationStreet" placeholder="Street"/>
                                <sf:errors path="organizationStreet" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-city" class="col-md-4 control-label">City:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="organizationCity" placeholder="City"/>
                                <sf:errors path="organizationCity" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-state" class="col-md-4 control-label">State:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="organizationState" placeholder="State"/>
                                <sf:errors path="organizationState" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-zipcode" class="col-md-4 control-label">Zip Code:</label>
                            <div class="col-md-8">
                                <sf:input type="number" class="form-control" path="zipcode" placeholder="Zip Code"/>
                                <sf:errors path="zipcode" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-organization-phone" class="col-md-4 control-label">Phone:</label>
                            <div class="col-md-8">
                                <sf:input type="phone" class="form-control" path="phoneNumber" placeholder="Phone"/>
                                <sf:errors path="phoneNumber" cssclass="error"></sf:errors>
                                <sf:hidden path="organizationId"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-8">
                                <input type="submit" class="btn btn-default" value="Update Organization"/>
                            </div>
                        </div>
                        
                        
                    </sf:form>
                    
                
            </div>
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>            
    </body>
</html>
