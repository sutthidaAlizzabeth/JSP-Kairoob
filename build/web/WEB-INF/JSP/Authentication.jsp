<%-- 
    Document   : Authentication
    Created on : May 3, 2015, 11:51:06 PM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/WEB-INF/include/taghead.jsp"/>

        <title>Authentication</title>
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
                    <li>
                        <a href="<%=response.encodeURL("Register")%>">
                            <span class="glyphicon glyphicon-user"></span> 
                            <span> Sign up</span>
                        </a>
                    </li>
                    <li><a href="<%=response.encodeURL("Login")%>"><span class="glyphicon glyphicon-lock"></span> <span> Login</span></a></li>
                </ul>
            </div>
        </div>
    </navbar>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div id="page-Authentication" class="jumbotron">
                    <h3>Congratulations !!! You have successfully registered with Kairoob.com</h3>
                    <p>You will login with this e-mail address</p>
                    <a href="<%= response.encodeURL("Login")%>"><button class="btn btn-lg btn-success">Login</button></a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/include/footer.jsp"/>
</body>
</html>
