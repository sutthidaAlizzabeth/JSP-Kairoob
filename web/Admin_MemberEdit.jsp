<%-- 
    Document   : MemberEditAdmin
    Created on : May 3, 2015, 9:37:06 PM
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
                            <a class="active-menu" href="MemberAllAdmin.jsp"><i class="fa fa-users fa-3x"></i>Members All</a>
                        </li>

                        <li>
                            <a href="PhotoListAdmin.jsp"><i class="fa fa-picture-o fa-3x"></i>Photos All</a>
                        </li>
                        <li>
                            <a href="PhotoEditAdmin.jsp"><i class="fa fa-picture-o fa-3x"></i><i class="fa fa-pencil-square-o fa-2x"></i>Photo edit details</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart fa-3x"></i>Sale DashBoard <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="SaleOrderAllDashBoard.jsp">สรุปยอดสั่งซื้อทั้งหมด</a>
                                </li>
                                <li>
                                    <a href="SaleOrderNotPayment.jsp">สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน</a>
                                </li>
                                <li>
                                    <a href="SaleOrderPayment.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินแล้ว<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="SaleOrderPaymentVisa.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน visa</a>
                                        </li>
                                        <li>
                                            <a href="SaleOrderPaymentPayPal.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน paypal</a>
                                        </li>
                                        <li>
                                            <a href="SaleOrderTransferMoney.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินด้วยการโอนเงิน</a>
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
                                แก้ไขข้อมูล
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
                                    <form action="#" method="post">
                                        <div class="col-lg-6">
                                            <span>IDCard : </span>
                                            <span><input class="form-control" type="text" name="Idcard"/></span>
                                            <br><br>
                                            <span>First Name : </span>
                                            <span><input class="form-control" type="text" name="fname"/></span>
                                            <br><br>
                                            <span>Last Name : </span>
                                            <span><input class="form-control" type="text" name="lanme"/></span>
                                            <br><br>
                                            <span>E-mail</span>
                                            <span><input class="form-control" type="text" name="email"/></span>
                                            <br><br>
                                            <span>Tel: </span>
                                            <span><input class="form-control" type="text" name="tel"/></span>
                                        </div>
                                        <br>
                                        <div id="box">
                                        <button  class=" btn btn-success" type="submit" >Submit</button>
                                        </div>
                                    </form>
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
