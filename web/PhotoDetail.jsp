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
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <img class="img-responsive" src="${photo.path}">
                    </div>
                </div>
            </div>
            <!--details photo-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Resolution: ${photo.resolution}</h3>
                        <h3>Category: ${photo.categoryName}</h3>
                        <h3>Tag: ${photo.tag}</h3>
                    </div>
                </div>
            </div>
            <!--ปุ่ม add to cart-->
            <form action="<%= response.encodeURL("AddToCart") %>">
            <div class=" container">
                <div class="row">
                    <div class="col-lg-12 cart-right">
                        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart "/> Add To Cart</button>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <section class="section-page">
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-md-3">
                                <h4>Contact Us</h4>
                                <p>Kairoob (ขายรูป)</p>
                                <p>126 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพมหานคร 10140</p>
                                <br>
                                <a href="mailto:Kairoob@gmail.com">Kairoob@gmail.com</a>
                            </div>
                            <div class="col-md-3">
                                <h4>Creator</h4>
                                <p>Nattha Boonnumchai</p>
                                <p>Boom Pongtorn</p>
                                <p>Sumet Benjawan</p>
                                <p>Alizzabeth Carry</p>
                                <p>Earth's Eternity</p>
                            </div>
                            <div class="col-md-3">
                                <h4>Follow Us</h4>
                                <a href="#">Facebook</a>
                            </div>
                            <div class="col-md-3">
                                <h4>Sponsor</h4>
                                <a href="https://www.facebook.com/iamfuphotography">Iamfu Studio</a>
                                <br>
                                <br>
                                <a href="https://www4.sit.kmutt.ac.th">SIT KMUTT</a>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="col-lg-12">
                        <p>Copyright © By <span class="glyphicon glyphicon-picture"></span>  Kairoob 2015</p> 
                    </div>
                </div>
            </footer>
        </section>
    </body>
</html>
