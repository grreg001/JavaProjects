<%-- 
    Document   : items
    Created on : Jan 29, 2021, 5:06:00 PM
    Author     : greta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Vending Machine</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .container {
                color: #ffffff;
                background-color: #000000;
                font-family: monospace;
            }
            .col-sm-3 {
                border: solid;
                border-color: #ffffff;
                margin-right: 10px;
                margin-bottom: 10px;
                background-color: #d3d3d3;
                color: #000000;
            }
            #right-side {
                border: solid;
                border-color: #ffffff;
                background-color: #d3d3d3;
                color: #000000;
            }
            .btn {
                background-color: #dbf6f9;
                margin-bottom: 5px;

            }
            .form-control {
                margin-bottom: 5px;
            }
            #display {
                background-color: #99ff99;
            }
            #button {
                background-color: #000000;
                color: #ffffff;
                margin-bottom: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <center><h1>Vending Machine</h1></center>
            <hr/>

            
            <!-- Left Side [items in stock as buttons] -->
            <div class="col-md-8">                
                
                <div class="row">
                    <c:forEach var="currentItem" items="${itemList}">
                        <a href="${pageContext.request.contextPath}/selectItem?itemId=${currentItem.itemId}"/>
                    <button type="submit" class="col-sm-3 m-2 selected" value="${currentItem}">
                        <form role="form" action="selectItem" value="${currentItem.itemId}">
                        <div class="col-item" id="">
                            <div class="row">
                                <c:out value="${currentItem.itemName}"/>
                            </div>
                            <div class="row">Item ID:
                                <c:out value="${currentItem.itemId}"/>
                            </div>
                            <div class="row">$
                                <c:out value="${currentItem.itemCost}"/>
                            </div>
                            <div class="row">Quantity Left:
                                <c:out value="${currentItem.inventory}"/>
                            </div>
                        </div>
                        </form>
                    </button>
                    
                    </c:forEach>
                </div>
                
                
                
            </div>
            
            
            <!-- Right Side [money input / messages] -->
            <div class="col-md-3" id="right-side">
                
                <!-- Form 1 -->
                <center><h2>Total $$ In</h2></center>
                
                <div class="row">
                        <div class="col-md-offset-3 col-md-5">
                            <input type="text" readonly class="form-control text-center" id="display" value="${balance}"/>
                        </div>
                </div> 

                <div class="row">
                    <form class="form-horizontal" role="form" action="addDollar" method="GET">
                        <div class="col-md-4">
                            <button type="submit" id="button" class="btn btn-default" name="coin">Add Dollar</button>
                        </div>
                    </form>
                
                    <form class="form-horizontal" role="form" action="addQuarter" method="GET">
                        <div class="col-md-offset-2 col-md-4">
                            <button type="submit" id="button" class="btn btn-default" name="coin">Add Quarter</button>
                        </div>
                    </form>
                </div>
                
                <div class="row">
                    <form class="form-horizontal" role="form" action="addDime" method="GET">
                        <div class="col-md-4">
                            <button type="submit" id="button" class="btn btn-default" name="coin">Add Dime</button>
                        </div>
                    </form>
                
                    <form class="form-horizontal" role="form" action="addNickel" method="GET">
                        <div class="col-md-offset-2 col-md-4">
                            <button type="submit" id="button" class="btn btn-default" name="coin">Add Nickel</button>
                        </div>
                    </form>
                </div>
                    
                
                        
                        
                
                <!-- Form 2 -->
                <center><h2>Messages</h2></center>
                
                    <div class="form-group">
                        <div class="col-md-14">
                            <input type="text" readonly class="form-control text-center" id="display" value="${message}"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="add-item" class="col-md-4 control-label">
                            Item:
                        </label>
                        <div class="col-md-4">
                            <input type="text" class="form-control" id="display" value="${itemId}"/>
                        </div>
                    </div>
                    
                    <form class="form-horizontal" role="form" action="makePurchase" method="GET">
                        <div class="col-md-offset-3 col-md-5">
                            <button type="submit" id="button" class="btn btn-default">Make Purchase</button>
                        </div>
                    
                    </form>
                
                <!-- Form 3 -->
                <center><h2>Change</h2></center>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" readonly class="form-control text-center" id="display" value="${change}"/>
                        </div>
                    </div>
                    
                <form class="form-horizontal" role="form" action="returnChange" method="GET">
                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-6">
                            <button type="submit" id="button" class="btn btn-default" name="change">Change Return</button>
                        </div>
                    </div>
                </form>
                    
                
                
                
                
                
            </div>
            
            
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

