<%-- 
    Document   : PhotoDetails
    Created on : Apr 19, 2015, 3:23:25 AM
    Author     : nattha
--%>

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
    <c:choose>
        <c:when test="${! empty user}">
            <jsp:include page="WEB-INF/include/header_login.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="WEB-INF/include/header.jsp"/>
        </c:otherwise>
    </c:choose>
    
    <div class="container">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center">Caption</h1> <!--caption-->
                </div>
            </div>
        </div>
        <!--photo very big-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="Assets/photo/blackandwhite/blackandwhite.jpg">
                </div>
            </div>
        </div>
        <!--details photo-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>Resolution</h3>
                    <h3>Kind</h3>
                    <h3>Tag</h3>
                </div>
            </div>
        </div>
        <!--ปุ่ม add to cart-->
        <div class=" container">
            <div class="row">
                <div class="col-lg-12 cart-right">
                    <button class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart "/> Add To Cart</button>
                </div>
            </div>
        </div>
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
