<%-- 
    Document   : PhotoEditDashBoard
    Created on : May 1, 2015, 7:03:56 PM
    Author     : nattha
--%>

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
        <title>PhotoEditDashBoard</title>
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
                            <a href="Admin_PhotoEdit.jsp"><i class="fa fa-picture-o fa-3x"></i><i class="fa fa-pencil-square-o fa-2x"></i>Photo edit details</a>
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
                            <h1 class="page-header">Photo Edit</h1>
                            <section class="section-page">
                                <div class="row">
                                    <!--c:forEach items="${photoList}" var="p" varStatus="count"-->
                                    <form action="#" method="post">
                                        <div class="col-lg-3 col-md-12">
                                            <div class="thumbnail">
                                                <a class="fancybox" href="${p.getPath()}" data-fancybox-group="gallery" title="${p.getCaption()}">
                                                    <img style="height: 250px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                                </a>
                                                <div class="caption">
                                                    <table style="width: 100%;">
                                                        <!--ช่องแก้ไขข้อมูล-->
                                                        <tr>
                                                            <td><h3>Caption  </h3></td>
                                                            <td><input type="text" class="form-control"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h3>Category  </h3></td>
                                                            <td><input type="text" class="form-control"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h3>Resolution </h3></td>
                                                            <td><input type="text" class="form-control"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td> 
                                                            </td>
                                                            <td>
                                                                <a>
                                                                    <input type="hidden" value="${p.getId()}">
                                                                    <div>
                                                                        <button class="btn btn-success">
                                                                            <i class='fa fa-check-circle'> Submit</i>
                                                                        </button>
                                                                    </div>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <div id="box">
                                        <a href="PhotoListAdmin.jsp"><button class="btn btn-default">
                                                <i class='fa fa-backward'> Back</i>
                                            </button>
                                        </a>
                                    </div>
                                    <!--/c:forEach-->
                                </div>
                            </section>
                        </div>
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
