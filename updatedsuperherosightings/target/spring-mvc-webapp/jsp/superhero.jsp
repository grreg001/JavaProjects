<%-- 
    Document   : superhero
    Created on : May 9, 2021, 1:33:18 PM
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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/superhero">Superheros</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/location">Locations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/addPicture">Add Picture</a></li>
                </ul>    
            </div>
                
           <div class="row">
            
            <div class="col-md-3" id="left-side">
                <div class="row">
                    <!-- link to superheroAdd jsp -->
                    <form action="${pageContext.request.contextPath}/addSuperheroPage" method="GET"> 
                        <button>Add Superhero</button>
                    </form>
                </div>
            </div>
            
                
                
            <div class="col-md-9" id="right-side">
                <h2>Superheroes</h2>
                <table id="superheroTable" class="table table-hover">
                    <tr>
                        <th width="20%">Superhero Name</th>
                        <th width="20%">Description</th>
                        <th width="20%">Superpower</th>
                        <th width="10%"></th>
                        <th width="10%"></th>
                    </tr>
                    <c:forEach var="currentSuperhero" items="${superheroList}">
                        <tr>
                            <td>
                                <a href="displaySuperheroDetails?superheroId=${currentSuperhero.superheroId}">
                                    <c:out value="${currentSuperhero.heroName}"/>
                                </a>
                            </td>
                            <td>
                                <c:out value="${currentSuperhero.heroDescription}"/>
                            </td>
                            <td>
                                <c:out value="${currentSuperhero.superpower}"/>
                            </td>
                            
                            <td>
                                <a href="editSuperheroPage?superheroId=${currentSuperhero.superheroId}">
                                    Edit
                                </a>
                            </td>
                            <td>
                                <a href="deleteSuperhero?superheroId=${currentSuperhero.superheroId}">
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
