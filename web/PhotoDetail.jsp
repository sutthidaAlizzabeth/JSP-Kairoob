<%-- 
    Document   : PhotoDetails
    Created on : Apr 19, 2015, 3:23:25 AM
    Author     : nattha
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/thumbnail-gallery.css">
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
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

    <div class="container">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center">${photo.caption}</h1> <!--caption-->
                </div>
            </div>
        </div>
        <!--photo very big-->
        <div class="container" align="center">
            <div class="row">
                <div class="col-lg-12">
                    <img style="border: solid #23527c 2px;" class="img-responsive" src="${photo.path}">
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <!--details photo-->
        <div class="container" style="background-color: #EEEEEE; padding-left: 2%; padding-right: 2%; border-radius: 2%">
            <div class="row">
                <h3 style="font-weight:bold" >Image Details</h3>
                <div class="col-lg-12">
                    <h3>Photo ID : ${photo.id}</h3>
                    <h3>Resolution: ${photo.resolution}</h3>
                    <h3>Category: ${photo.categoryName}</h3>
                    <h3>Price : ${photo.price}</h3>
                    <h3>Model Release : </h3>
                    <h3>Property Release : </h3>
                    <h3>Tag: ${photo.tag}</h3>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <br/>
        <div class="row">
            <div class="col-lg-12 ">

                <div class="col-md-4">
                    <div class="col-md-offset-4">
                        <a href="<%=response.encodeURL("PhotoList")%>"><button class="btn btn-primary" value="Continue Shopping">Continue Shopping</button></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-offset-8">
                        <form action="<%= response.encodeURL("AddToCart")%>">
                            <input type="hidden" name="id" value="${photo.id}">
                            <input type="hidden" name="kind" value="photo.getCategoryName()">
                            <input type="hidden" name="price" value="all">
                            
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart "/> Add To Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
 

    </div>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
