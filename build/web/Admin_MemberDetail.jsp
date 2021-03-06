<%-- 
    Document   : MemberDetailAdmin
    Created on : May 2, 2015, 9:06:34 PM
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
        <title>MemberDetailAdmin</title>
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
                            <h1 class="page-header">
                                สมาชิกรายละเอียด
                            </h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="jumbotron">
                                <h3>ข้อมูล</h3>
                                <br>
                                <div class="row">
                                    <!--top-->
                                    <div class="col-lg-6">
                                        <span>IDCard : </span>
                                        <span>xxxxxxxxx</span>
                                        <br><br>
                                        <span>First Name : </span>
                                        <span>xxxxxxxxx</span>
                                        <br><br>
                                        <span>Last Name : </span>
                                        <span>xxxxxx</span>
                                        <br><br>
                                        <span>E-mail</span>
                                        <span>xxxxxxx</span>
                                        <br><br>
                                        <span>Tel: </span>
                                        <span>xxxxxx</span>
                                    </div>
                                </div>
                                <br>
                                <h3>ประวัติการซื้อสินค้า</h3>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <td>ลำดับ</td>
                                                    <td>รายการ</td>
                                                    <td>ราคา</td>
                                                    <td>สถานะ</td>
                                                    <td>รายละเอียด</td>
                                                    <td>แจ้งการชำระเงิน</td>
                                                </tr>
                                                <tr>
                                                    <!--backend-->
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <a href="MemberAllAdmin.jsp"><button class="btn btn-default"><i class="fa fa-backward"> Member All</i></button></a>
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
