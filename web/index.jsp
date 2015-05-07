<%-- 
    Document   : index
    Created on : Mar 31, 2015, 7:38:54 PM
    Author     : nattha
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kairoob</title>
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
    </head>
    <body>
        <!-- Navigation เมนู -->
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

    <!--body -->
    <section class="header">
        <div class="text-vertical-center" >
            <h1>Kairoob</h1>
            <h3>Easy to buy Everywhere Everytime</h3>
            <div align='center' style="margin-left: 425px">
            </div>
    </section>
    <section id="bg-aboutus" class="section-page">
        <div class="container">
            <div class="col-lg-12 text-center">
                <h1>About us</h1>
                <h2>เว็บ Stockphoto โดยคนไทย เพื่อคนไทย</h2>
            </div>
        </div>
    </section>
    <section id="bg-service" class="section-page">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h1>Our Services</h1>
                    <br>
                    <div class="row">
                        <div class="col-md-4 col-sm-8">
                            <div class="service-item">
                                <span id="icon-find" class="glyphicon glyphicon-search" style="font-size: 5em"></span>
                                <h3>Easy to find</h3>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-8">
                            <div class="service-item">
                                <span id="icon-cart" class="glyphicon glyphicon-shopping-cart" style="font-size: 5em"></span>
                                <h3>Easy to buy </h3>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-8">
                            <div class="service-item">
                                <span class="fa fa-cc-paypal fa-5x icon-payments" ></span>
                                <span class="fa fa-money fa-5x icon-payments"></span>
                                <span class="fa fa-cc-visa fa-5x icon-payments"></span>
                                <h3>Quick and easy ecommerce</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--page content catagory หมวดหมู่รูปภาพ-->
    <section class="section-page">
        <div class="container">
            <h1>Browser By Category</h1>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=animals&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/animals/icons_animals.jpg" alt="animals">
                                <div class="caption">
                                    <h3>Animals</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=blackandwhite&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/blackandwhite/blackandwhite-city.jpg" alt="black and white">
                                <div class="caption">
                                    <h3>Black & White</h3>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=cityscape&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/cityscape/cityscape.jpg" alt="cityscape">
                                <div class="caption">
                                    <h3>Cityscape</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=food&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/food/noodle.JPG" alt="food">
                                <div class="caption">
                                    <h3>Food</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=landscape&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/landscape/landscape.jpg" alt="landscape">
                                <div class="caption">
                                    <h3>Landscape</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=nature&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/nature/sunflower-2.jpg" alt="nature">
                                <div class="caption">
                                    <h3>Nature</h3>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=people&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/people/people-3.jpg" alt="people">
                                <div class="caption">
                                    <h3>People</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=toy&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/toy/Lego-2.JPG" alt="toy">
                                <div class="caption">
                                    <h3>Toy</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <a href="<%= response.encodeURL("PhotoList?kind=transportation&price=all&res=all")%>">
                            <div class="thumbnail">
                                <img src="Assets/photo/transportation/BTS-1.JPG" alt="transportation">
                                <div class="caption">
                                    <h3>Transportation</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div> 
        </div>
    </section>
    <!--footer-- ฟุตเตอร์-->
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
