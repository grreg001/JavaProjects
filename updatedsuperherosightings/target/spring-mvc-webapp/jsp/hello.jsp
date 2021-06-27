<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hello Controller Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <center><h1>Superhero Sightings Tracker</h1></center>
            <hr/>
            <div class="navbar">
                 <ul class="nav nav-tabs">
                 <li role="presentation"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                 <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/hello/sayhi">Hello Controller</a></li>
                 <li role="presentation"><a href="${pageContext.request.contextPath}/superhero">Superheros</a></li>
                 <li role="presentation"><a href="${pageContext.request.contextPath}/location">Locations</a></li>
                 <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organizations</a></li>
                 <li role="presentation"><a href="${pageContext.request.contextPath}/sighting">Sightings</a></li>

                </ul>    
            </div>
            <h2>${message}</h2>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

