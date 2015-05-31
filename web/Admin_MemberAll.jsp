<%-- 
    Document   : MemberAllAdmin
    Created on : Apr 25, 2015, 11:46:45 PM
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
        <title>JSP Page</title>
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
                                สมาชิกทั้งหมด
                            </h1>
                            <form action="#" method="post">
                                <div class="col-md-2 search-label">
                                    <h4>Search By</h4>
                                </div>
                                <div class="col-md-2">
                                    <select name="type" class="form-control">
                                        <option value="Name">Name</option>
                                        <option value="ID">ID</option>
                                        <option value="E-Mail">E-Mail</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="searchCustomer" value="#">
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" name="Search" class="btn btn-default">Search</button>
                                </div>
                                
                                <table class="table table-bordered">
                                    <tr>
                                        <td class="text-center">No.</td>
                                        <td class="text-center">Id Card</td>
                                        <td class="text-center">First Name</td>
                                        <td class="text-center">Last Name</td>
                                        <td class="text-center">Tel.</td>
                                        <td class="text-center">View</td>
                                        <td class="text-center">Edit</td>
                                    </tr>
                                    <tr> 
                                        <!--Coding-->
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="text-center"><a href="MemberDetailAdmin.jsp" class="btn btn-default fa fa-eye"></a></td>
                                        <td class="text-center"><a href="MemberEditAdmin.jsp" class="btn btn-default fa fa-pencil-square"></a></td>
                                    </tr>
                                </table>
                            </form>
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
