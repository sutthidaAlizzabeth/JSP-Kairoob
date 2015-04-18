<%-- 
    Document   : Register
    Created on : Apr 2, 2015, 9:38:47 PM
    Author     : nattha
--%>

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
    <navbar class="navbar navbar-inverse navbar-fixed-top" role="nav">
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
    <section class="section-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-md-6">
                        <h2>Register Free</h2>
                        <p>สมาชิกแบบธรรมดา อัพโหลดรูปได้ 10 รูป ต่อ สัปดาห์</p>
                        <p>สมัครวันนี้ทดลองแบบ VIP 14 วัน</p>
                        <p>สมาชิก VIP เดือนละ 350 บาท</p>
                    </div>
                    <div class="col-md-6 group-all">
                        <form name='regis' action="Register" method="post"> 
                            <div class="form-group">
                                <label>E-mail</label>
                                <input id='username' onblur="checkEmail(this.value)" type="email" class="form-control" name="username" placeholder="E-mail" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id='pass' onblur="chkpass()" type="password" class="form-control" name="password" placeholder="password" required>
                            </div>
                            <div class="form-group">
                                <label>RePassword</label>
                                <input id='repass' onblur='chkpass()' type="password" class="form-control" name="repassword" placeholder="repassword" required>
                            </div>
                            <button onclick="sub()" type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
</body>
</html>
