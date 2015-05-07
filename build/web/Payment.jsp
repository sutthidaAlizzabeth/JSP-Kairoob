<%-- 
    Document   : Notification
    Created on : Apr 12, 2015, 10:28:03 PM
    Author     : Boom
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/include/taghead.jsp"/>
    </head>
    <body>
    <navbar class="navbar navbar-kairoob navbar-inverse navbar-fixed-top" role="nav">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=response.encodeURL("index.jsp")%>"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
                <form action="<%= response.encodeURL("PhotoList")%>" method="post" class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" name="photosearchkey" id="form-search" class="form-control" placeholder="Search" value="${search}" required>
                    </div>
                    <button type="submit" class="btn btn-default"><span class="fa fa-search"</button>
                </form>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="${cart.items == null ? "" : "ShowCart"}">
                            <span class="glyphicon glyphicon-shopping-cart"></span> 
                            <span>&nbsp;&nbsp; ${cart.items == null ? 0 : cart.size} </span>
                        </a>
                    </li>
                    <c:choose>
                        <c:when test="${! empty user}">
                            <li><a href="<%=response.encodeURL("AccountShow")%>"><span class="glyphicon glyphicon-user"></span> <span> User</span></a></li>
                            <li><a href="<%=response.encodeURL("Logout")%>"><span class="glyphicon glyphicon-off"></span> <span> Logout</span></a></li>
                            </c:when>
                            <c:otherwise>
                            <li>
                                <a href="<%=response.encodeURL("Register")%>">
                                    <span class="glyphicon glyphicon-user"></span> 
                                    <span> Sign up</span>
                                </a>
                            </li>
                            <li><a href="<%=response.encodeURL("Login")%>"><span class="glyphicon glyphicon-lock"></span> <span> Login</span></a></li>
                            </c:otherwise>
                        </c:choose>

                </ul>
            </div>
        </div>
    </navbar>

    <div class="paymentdiv">
        <h2>Add Payment</h2>
        <table class="payment">
            <tr>
                <td>Details Payment</td>
                <td></td>
            </tr>
            <tr>
                <td rowspan="3">Account</td>
                <td><input type="radio" name="bank">1</td>
            </tr>
            <tr>
                <td><input type="radio" name="bank">2</td>
            </tr>
            <tr>
                <td><input type="radio" name="bank">3</td>
            </tr>
            <tr>
                <td>Date Transfer</td>
                <td><input class="form-control" type="text" id="datepicker" style="width: 300px"></td>
            </tr>
            <tr>
                <td>Monty</td>
                <td><input class="form-control" type="text" style="width: 300px;" placeholder="xxx.xx"></td>
                <td>Baht</td>
            </tr>
            <tr>
                <td>Details</td>
                <td><input type="text" style="width: 300px;" placeholder="Date"></td>
            </tr>
            <tr>
                <td></td>
                <td><input class="btn btn-default" type="button" value="Add Payment"></td>
            </tr>
        </table>
    </div>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
