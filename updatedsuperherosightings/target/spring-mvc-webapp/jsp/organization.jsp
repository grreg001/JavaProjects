<%-- 
    Document   : organization
    Created on : May 9, 2021, 2:03:07 PM
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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>
                </ul>    
            </div>
                
           <div class="row">
            
            <div class="col-md-3" id="left-side">
                <div class="row">
                    <!-- link to organizationAdd jsp -->
                    <form action="${pageContext.request.contextPath}/addOrganizationPage" method="GET"> 
                        <button>Add Organization</button>
                    </form>
                </div>
            </div>
            
                
                
            <div class="col-md-9" id="right-side">
                <h2>Organizations</h2>
                <table id="organizationTable" class="table table-hover">
                    <tr>
                        <th width="12%">Organization Name</th>
                        <th width="12%">Description</th>
                        <th width="12%">Street</th>
                        <th width="12%">City</th>
                        <th width="12%">State</th>
                        <th width="12%">Zip Code</th>
                        <th width="12%">Phone</th>
                        <th width="8%"></th>
                        <th width="8%"></th>
                    </tr>
                    <c:forEach var="currentOrganization" items="${organizationList}">
                        <tr>
                            <td>
                                <a href="displayOrganizationDetails?organizationId=${currentOrganization.organizationId}">
                                    <c:out value="${currentOrganization.organizationName}"/>
                                </a>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.organizationDescription}"/>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.organizationStreet}"/>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.organizationCity}"/>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.organizationState}"/>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.zipcode}"/>
                            </td>
                            <td>
                                <c:out value="${currentOrganization.phoneNumber}"/>
                            </td>
                            <td>
                                <a href="editOrganizationPage?organizationId=${currentOrganization.organizationId}">
                                    Edit
                                </a>
                            </td>
                            <td>
                                <a href="deleteOrganization?organizationId=${currentOrganization.organizationId}">
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
