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
        <c:choose>
            <c:when test="${! empty user}" >
                <jsp:include page="WEB-INF/include/header_login.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="WEB-INF/include/header.jsp"/>
            </c:otherwise>
        </c:choose>
        
        <!--body -->
        <section class="header">
            <div class="text-vertical-center" >
                <h1>Kairoob</h1>
                <h3>Easy to buy Everywhere Everytime</h3>
                <div align='center' style="margin-left: 425px">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group" style="text-align: center;">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->
                </div><!-- /.row -->
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
                            <a href="PhotoList?kind=animals">
                                <div class="thumbnail">
                                    <img src="Assets/photo/animals/icons_animals.jpg" alt="animals">
                                    <div class="caption">
                                        <h3>Animals</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=blackandwhite">
                                <div class="thumbnail">
                                    <img src="Assets/photo/blackandwhite/blackandwhite-city.jpg" alt="black and white">
                                    <div class="caption">
                                        <h3>Black & White</h3>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=cityscape">
                                <div class="thumbnail">
                                    <img src="Assets/photo/cityscape/cityscape.jpg" alt="cityscape">
                                    <div class="caption">
                                        <h3>Cityscape</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=food">
                                <div class="thumbnail">
                                    <img src="Assets/photo/food/noodle.JPG" alt="food">
                                    <div class="caption">
                                        <h3>Food</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=landscape">
                                <div class="thumbnail">
                                    <img src="Assets/photo/landscape/landscape.jpg" alt="landscape">
                                    <div class="caption">
                                        <h3>Landscape</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=nature">
                                <div class="thumbnail">
                                    <img src="Assets/photo/nature/sunflower-2.jpg" alt="nature">
                                    <div class="caption">
                                        <h3>Nature</h3>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=people">
                                <div class="thumbnail">
                                    <img src="Assets/photo/people/people-3.jpg" alt="people">
                                    <div class="caption">
                                        <h3>People</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=toy">
                                <div class="thumbnail">
                                    <img src="Assets/photo/toy/Lego-2.JPG" alt="toy">
                                    <div class="caption">
                                        <h3>Toy</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="PhotoList?kind=transportation">
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
