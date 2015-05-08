<%-- 
    Document   : Myphoto
    Created on : May 8, 2015, 3:45:24 AM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="WEB-INF/include/taghead.jsp"/>
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
        <section class="section-page">
        <div class="container">
            <h1>My Photo :::</h1>
            <c:choose>
                <c:when test="${! empty cart}">
                    <table class="table table-bordered">
                        <tr>
                            <td class="text-center">No</td>
                            <td class="text-center">Preview</td>
                            <td class="text-center">Caption</td>
                            <td class="text-center">Category</td>
                            <td class="text-center">Resolution</td>
                            <td class="text-center">Download</td>
                        </tr>
                        <!--coding -->
                        <c:forEach items="${cart.items}" var="item" varStatus="no">
                            <tr>
                                <td class="text-center">${no.index+1}</td>
                                <td class="text-center"><img width="50px" height="50px" src="${item.p.path}" /></td>
                                <td class="text-center">${item.p.caption}</td>
                                <td class="text-center">${item.p.categoryName}</td>
                                <td class="text-center">${item.p.resolution}</td>
                                <td class="text-center">${item.p.price}</td>
                                <td class="text-center">                                    
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:when>
                <c:otherwise>
                    Empty
                </c:otherwise>
            </c:choose>
            <!--ปุ่ม submit checkout update-->
            <div class="row">
                <div class="col-lg-12 ">

                    <div class="col-md-4">
                        <div class="col-md-offset-4">
                            <a href="<%=response.encodeURL("AccountShow")%>"><button class="btn btn-default" value="AccountShow">AccountShow</button></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-offset-8">
                            <a href="<%=response.encodeURL("#")%>"><button class="btn btn-default" value="HistoryShopping">HistoryShopping</button></a>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
