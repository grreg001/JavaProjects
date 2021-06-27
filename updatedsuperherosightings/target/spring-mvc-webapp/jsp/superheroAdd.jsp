<%-- 
    Document   : superheroAdd
    Created on : May 9, 2021, 2:19:21 PM
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
                
           <div class="col-md-9">
            
                <h2>Add Superhero</h2>
                    <sf:form class="form-horizontal" modelAttribute="superhero" role="form" action="addSuperhero" method="POST">
                        <div class="form-group">
                            <label for="add-hero-name" class="col-md-4 control-label">Superhero Name:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="heroName" placeholder="Superhero Name"/>
                                <sf:errors path="heroName" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-hero-description" class="col-md-4 control-label">Description:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="heroDescription" placeholder="Description"/>
                                <sf:errors path="heroDescription" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-superpower" class="col-md-4 control-label">Superpower:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="superpower" placeholder="Superpower"/>
                                <sf:errors path="superpower" cssclass="error"></sf:errors>
                                <sf:hidden path="superheroId"/>
                            </div>
                            
                        </div>
                        <!-- add organizations-->
                        <spring:bind path="organization">
                            <div class="form-group">
                                <label for="add-org-list" class="col-md-2 control-label">Organizations for Superhero:</label>
                                <div class="col-md-8">
                                    <select name="org" multiple>
                                        <option value="none" selected>None</option>
                                        <c:forEach var="currentOrganization" items="${organizationList}">
                                            <option value="${currentOrganization.organizationId}">
                                                <c:out value="${currentOrganization.organizationName}"/>
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        
                        
                            
                         </spring:bind>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-8">
                                <input type="submit" class="btn btn-default" value="Add Superhero"/>
                            </div>
                        </div>
                        
                    </sf:form>
                    
               <form role="form" method="POST" action="addPicture" 
                    enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="displayTitle">Display Title:</label>
                        <input type="text" id="displayTitle" name="displayTitle"/>
                    </div>
                    <div class="form-group">
                        <label for="picture">Upload File:</label> 
                        <input type="file" id="picture" name="picture"/>
                    </div>
                    <input type="submit" value="Upload Picture"/>
                </form>         
                        
            </div>
                
                
                
                
                
     <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>           
    </body>
</html>
