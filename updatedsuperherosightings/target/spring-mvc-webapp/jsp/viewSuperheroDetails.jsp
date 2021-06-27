<%-- 
    Document   : viewSuperheroDetails
    Created on : May 14, 2021, 4:02:13 PM
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
        <div class="container" modelAttribute="s">
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
                <div class="row">
                    <center><h2><c:out value="${s.heroName}"/></h2></center>
                </div>
                
                <div class="col-md-4">
                    
                </div>
                
           
               <div class="col-md-5">
            
               <center><table id="superheroDetails" class="table table-hover">
                        <tr>
                            <td>
                            <c:out value="Name: ${s.heroName}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <c:out value="Description: ${s.heroDescription}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <c:out value="Superpower: ${s.superpower}"/>
                            </td>
                        </tr>
                        
                        <!-- add organizations-->
                        <table id="organizationTable" class="table table-hover">
                            <tr>
                                <th width="12%">Organization Name</th>
                        
                            </tr>
                            <c:forEach var="currentOrganization" items="${organizationsBySuperhero}">
                            <tr>
                                <td>
                                    <a href="displayOrganizationDetails?organizationId=${currentOrganization.organizationId}">
                                        <c:out value="${currentOrganization.organizationName}"/>
                                    </a>
                                </td>
                            
                            
                            </tr>
                            </c:forEach>
                        </table>
                        
                        
                   </table></center>
                        
                </div>  
                    
               
           
            </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>           
    </body>
</html>
