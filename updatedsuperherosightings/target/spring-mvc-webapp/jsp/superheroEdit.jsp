<%-- 
    Document   : superheroEdit
    Created on : May 9, 2021, 2:19:42 PM
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
            
                <h2>Edit Superhero</h2>
                    <sf:form class="form-horizontal" role="form" modelAttribute="superhero" action="editSuperhero" method="POST">
                        <div class="form-group">
                            <label for="add-hero-name" class="col-md-4 control-label">Superhero Name:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="heroName" placeholder="${superhero.heroName}"/>
                                <sf:errors path="heroName" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-hero-description" class="col-md-4 control-label">Description:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="heroDescription" placeholder="${superhero.heroDescription}"/>
                                <sf:errors path="heroDescription" cssclass="error"></sf:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add-superpower" class="col-md-4 control-label">Superpower:</label>
                            <div class="col-md-8">
                                <sf:input type="text" class="form-control" path="superpower" placeholder="${superhero.superpower}"/>
                                <sf:errors path="superpower" cssclass="error"></sf:errors>
                                <sf:hidden path="superheroId"/>
                            </div>
                        </div>
                        <!-- add organizations-->
                        <spring:bind path="organization">
                            <div class="form-group">
                                <label for="add-superhero-organization" col-md-2 control-label">Organizations</label>
                                <div class="col-md-8">
                                    <select name="organizationSelected" multiple>
                                        <c:if test="${empty organizationSelected}">
                                            <option value="none" selected hidden/>
                                        </c:if>
                                        <option value="none">None</option>
                                        <c:forEach var="organizationSelected" items="${organizationsSelected}">
                                            <option selected="selected" value="${organizationsSelected.organizationId}">
                                                <c:out value="${organizationsSelected.organizationName}"/>
                                            </option>
                                        </c:forEach>
                                        <c:forEach var="organizationNotSelected" items="${organizationsNotSelected}">
                                            <option value="${organizationsNotSelected.organizationId}">
                                                <c:out value="${organizationsNotSelected.organizationName}"/>
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </spring:bind>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-8">
                                <input type="submit" class="btn btn-default" value="Edit Superhero"/>
                            </div>
                        </div>
                        
                        
                        
                    </sf:form>
                    
                
            </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>           
    </body>
</html>
