<%-- 
    Document   : index
    Created on : Mar 31, 2015, 7:38:54 PM
    Author     : nattha
--%>

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
                <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
                <form action="" method="" class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" id="form-search" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default"><span class="fa fa-search"</button>
                </form>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> <span> Sign up</span></a></li>
                    <li><a href="Login.jsp"><span class="glyphicon glyphicon-lock"></span> <span> Login</span></a></li>
                </ul>
            </div>
        </div>
    </navbar>
    <section class="header">
        <div class="text-vertical-center">
            <h1>Kairoob</h1>
            <h3>Easy to buy Everywhere Everytime</h3>
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
                        <div class="thumbnail">
                            <img src="Assets/photo/animals/icons_animals.jpg" alt="...">
                            <div class="caption">
                                <h3>Animals</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/blackandwhite/blackandwhite-city.jpg" alt="...">
                            <div class="caption">
                                <h3>Black & White</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/cityscape/cityscape.jpg" alt="...">
                            <div class="caption">
                                <h3>Cityscape</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/food/noodle.JPG" alt="...">
                            <div class="caption">
                                <h3>Food</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/landscape/landscape.jpg" alt="...">
                            <div class="caption">
                                <h3>Landscape</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/nature/sunflower-2.jpg" alt="...">
                            <div class="caption">
                                <h3>Nature</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/people/people-3.jpg" alt="...">
                            <div class="caption">
                                <h3>People</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/toy/Lego-2.JPG" alt="...">
                            <div class="caption">
                                <h3>Toy</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="Assets/photo/transportation/BTS-1.JPG" alt="...">
                            <div class="caption">
                                <h3>Transportation</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </section>
    <!--footer-- ฟุตเตอร์-->
    <section class="section-page">
        <div class="container">
            <footer>
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
            </footer>
        </div>
    </section>
</body>
</html>
