<%-- 
    Document   : Register
    Created on : Apr 2, 2015, 9:38:47 PM
    Author     : nattha
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/thumbnail-gallery.css">
        <link rel="stylesheet" href="Assets/csss/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="Assets/js/kairoob.js"></script>
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

    <c:if test="${! empty message}">
        <script type="text/javascript">
                alert("${message}");
        </script>
    </c:if>
    <section class="section-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-md-6">
                        <h2>Register Free</h2>
                        <p> - Simple pricing</p>
                        <p> - Easy to buy Everywhere Every time</p>
                        <span> - Already a member?<a href="<%= response.encodeURL("Login")%>" style="color: #22A7F0;"> Login</a></span>
                    </div>
                    <div class="col-md-6 group-all">
                        <form id="regis" name='regis' action="<%=response.encodeURL("Register")%>" method="post"> 
                            <div class="form-group">
                                <label>E-mail</label>
                                <input id='username' type="email" class="form-control" name="username" placeholder="E-mail" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id='pass' type="password" class="form-control" name="password" placeholder="password" required>
                            </div>
                            <div class="form-group">
                                <label>RePassword</label>
                                <input id='repass' type="password" class="form-control" name="repassword" placeholder="repassword" required>
                            </div>
                            <input onclick="return sub()" type="submit" class="btn btn-success">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
