<%-- 
    Document   : PhotoList
    Created on : Apr 2, 2015, 10:36:16 PM
    Author     : nattha
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Model.Photo" %>
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
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>KaiRoob</title>
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
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form action="PhotoList" method="post">
                    <h1>Photo List</h1>
                    <div class="container">
                        <div class="col-md-1 search-photo">
                            <h4>Search</h4>
                        </div>
                        <div class="col-md-2 search-photo">
                            <select name="kind" class="form-control">
                                <option value="all">All</option>
                                <option value="animals">Animals</option>
                                <option value="blackandwhite">Black & White</option>
                                <option value="cityscape">Cityscape</option>
                                <option value="food">Food</option>  
                                <option value="landscape">Landscape</option> 
                                <option value="nature">Nature</option>
                                <option value="people">People</option>
                                <option value="toy">Toy</option>
                                <option value="transportation">Transportation</option>
                            </select>
                        </div>
                        <div class="col-md-8 search-photo">
                            <input type="text" class="form-control" name="photosearchkey" value="${param.photosearchkey}">
                        </div>
                        <div class="col-md-1 search-photo">
                            <button type="submit" class="btn btn-default">Search</button>
                        </div>
                    </div>
                </form>
                <br/>
                <!--แสดงรูป-->
                <c:choose>
                    <c:when test="${! empty photoList}">
                        <c:forEach items="${photoList}" var="p" varStatus="count">
                            <div class="col-lg-4">
                                <img src="${p.getPath()}" alt="${p.getCaption()}"/>
                            </div>
                            <c:if test="${(count.index+1)%3 == 0}">
                                <br/>
                            </c:if>
                        </c:forEach>
                    </c:when>
                <!--./แสดงรูป-->   
                <!--แสดงข้อความ error เมื่อค้นหาไม่เจอ-->
                    <c:otherwise>
                
                    </c:otherwise>
                <!--./แสดงข้อความ error เมื่อค้นหาไม่เจอ-->
                </c:choose>
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
