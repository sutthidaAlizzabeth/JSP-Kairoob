<%-- 
    Document   : Myphoto
    Created on : May 8, 2015, 3:45:24 AM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="Model.Photo" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="WEB-INF/include/taghead.jsp"/>
        <link rel="stylesheet" href="Assets/css/simple-sidebar.css"/>
        <title>JSP Page</title>
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
    <div id="wrapper">
        <div class="container">
            <div id="sidebar-wrapper" style="margin-top:45px">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                            Menu
                        </a>
                    </li>
                    <li>
                        <a href="<%=response.encodeURL("AccountShow")%>">AccountShow</a>
                    </li>
                    
                    <li>
                        <a href="<%=response.encodeURL("MyPhoto")%>">MyPhoto</a>
                    </li>
                </ul>
            </div>
        </div>    
        <section class="section-page">
            <div class="container">
                <h1>My Photo :::</h1>
                <c:choose>
                    <c:when test="${! empty photos}">
                        <br/>
                        <table>
                            <c:forEach items="${photos}" var="photo" varStatus="no">
                                <tr>
                                    <td>${no.index+1}</td>
                                    <td>${photo.caption}</td>
                                    <td><a href="${photo.path}">Download</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <br/>
                        <a href="<%= response.encodeURL("PhotoList")%>"><span style="margin-left: 40%;">Buy Photo</span></a>
                    </c:otherwise>
                </c:choose>

        </section>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
