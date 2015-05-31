<%-- 
    Document   : PhotoListAdmin
    Created on : May 2, 2015, 8:50:51 PM
    Author     : nattha
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List" %>
<%@page import="Model.Photo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/css/custom.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="Assets/js/custom.js"></script>
        <script type="text/javascript" src="Assets/js/jquery.metisMenu.js"></script>
        <title>PhotoListAdmin</title>
    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="WEB-INF/include/header_admin.jsp"/>
            <!--/. NAV TOP-->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">
                            <img src="Assets/bg/find_user.png" class="user-image img-responsive"/>
                        </li>
                        <li>
                            <a href="Admin_MemberAll.jsp"><i class="fa fa-users fa-3x"></i>Members All</a>
                        </li>
                        
                        <li>
                            <a href="Admin_PhotoList.jsp"><i class="fa fa-picture-o fa-3x"></i>Photos All</a>
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart fa-3x"></i>Sale DashBoard <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active-menu" href="Admin_SaleOrderAllDashBoard.jsp">สรุปยอดสั่งซื้อทั้งหมด</a>
                                </li>
                                <li>
                                    <a href="Admin_SaleOrderNotPayment.jsp">สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน</a>
                                </li>
                                <li>
                                    <a href="Admin_SaleOrderPayment.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินแล้ว<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        
                                        <li>
                                            <a href="Admin_SaleOrderPaymentPayPal.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน paypal</a>
                                        </li>
                                        <li>
                                            <a href="Admin_SaleOrderTransferMoney.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินด้วยการโอนเงิน</a>
                                        </li>

                                    </ul>

                                </li>
                            </ul>
                        </li>  
                        <li>
                            <a  href="#"><i class="fa fa-sign-out fa-3x"></i>Log out</a>
                        </li>	
                    </ul>
                </div>
            </nav>  
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12"> 
                            <h1 class="page-header">Photo Search</h1>
                            <form action="<%=response.encodeURL("PhotoList")%>" method="post">
                                <div class="col-md-2 search-label">
                                    <h4>Search By</h4>
                                </div>
                                <div class="col-md-2">
                                    <select name="kind" class="form-control">
                                        <c:choose>
                                            <c:when test="${kind == 'all'}">
                                                <option value="all" selected>All</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="all">All</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${kind == 'animals'}">
                                                <option value="animals" selected>Animals</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="animals">Animals</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${kind == 'blackandwhite'}">
                                                <option value="blackandwhite" selected>Black & White</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="blackandwhite">Black & White</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${kind == 'cityscape'}">
                                                <option value="cityscape" selected>Cityscape</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="cityscape">Cityscape</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${kind == 'food'}">
                                                <option value="food" selected>Food</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="food">Food</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${kind == 'landscape'}">
                                                <option value="landscape" selected>Landscape</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="landscape">Landscape</option>
                                            </c:otherwise>
                                        </c:choose>  
                                        <c:choose>
                                            <c:when test="${kind == 'nature'}">
                                                <option value="nature" selected>Nature</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="nature">Nature</option>
                                            </c:otherwise>
                                        </c:choose>  
                                        <c:choose>
                                            <c:when test="${kind == 'people'}">
                                                <option value="people" selected>People</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="people">People</option>
                                            </c:otherwise>
                                        </c:choose>  
                                        <c:choose>
                                            <c:when test="${kind == 'toy'}">
                                                <option value="toy" selected>Toy</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="toy">Toy</option>
                                            </c:otherwise>
                                        </c:choose> 
                                        <c:choose>
                                            <c:when test="${kind == 'transportation'}">
                                                <option value="transportation" selected>Transportation</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="transportation">Transportation</option>
                                            </c:otherwise>
                                        </c:choose> 

                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="photosearchkey" value="${param.photosearchkey}">
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" class="btn btn-default">Search</button>
                                </div>
                            </form>
                            <!--c:choose-->
                            <!--c:when test="${! empty photoList}"-->
                            <section class="section-page">
                                <div class="container">
                                    <div class="container">
                                        <div class="row">
                                            <!--c:forEach items="${photoList}" var="p" varStatus="count"-->
                                            <form action="<%=response.encodeURL("AddToCart")%>" method="post">
                                                <div class="col-sm-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <a class="fancybox" href="${p.getPath()}" data-fancybox-group="gallery" title="${p.getCaption()}">
                                                            <img style="height: 250px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                                        </a>
                                                        <div class="caption">
                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td><h3>Caption : </h3></td
                                                                </tr>
                                                                <tr>
                                                                    <td><h3>Category : </h3></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><h3>${p.getCaption()}</h3></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <!--/c:forEach-->
                                        </div>
                                         <!--button -- edit-->                       
                                        <a href="PhotoEditAdmin.jsp">
                                            <button class="btn btn-default">
                                                <i class='fa fa-pencil-square'>Edit</i>
                                            </button>
                                        </a>
                                    </div>
                                </div>
                            </section>
                            <!--/c:when-->
                            <!--c:otherwise-->
                            <!--h3 style="color:red; text-align: center;">Not Found</h3-->
                            <!--c:otherwise-->
                            <!--:choose-->    
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!--./ Page-wrapper สมาชิกทั้งหมด -->
    </div>
    <!-- Page wrapper ทั้งหมด --->
</body>
</html>
