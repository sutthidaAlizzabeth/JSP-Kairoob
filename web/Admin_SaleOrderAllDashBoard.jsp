<%-- 
    Document   : SaleOrderAllDashBoard
    Created on : Apr 20, 2015, 10:06:33 PM
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
        <title>Admin</title>
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
                                สรุปยอดสั่งซื้อทั้งหมด
                            </h1>
                            <!--ชำระเงินแล้ว-->
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-money fa-5x"></i>

                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div >120,000</div>
                                                    <div>New Orders!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="Admin_SaleOrderPayment.jsp">
                                            <div class="panel-footer">
                                                <span class="pull-left">สรุปยอดการสั่งซื้อที่ชำระเงินแล้ว</span>
                                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                                <div class="clearfix"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!--ยังไม่ได้ชำระเงิน-->
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-red">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-money fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div >120,000</div>
                                                    <div>New Orders!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="Admin_SaleOrderNotPayment.jsp">
                                            <div class="panel-footer">
                                                <span class="pull-left">สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน</span>
                                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                                <div class="clearfix"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!--paypal-->
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-cc-paypal fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div >120,000</div>
                                                    <div>New Orders!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="Admin_SaleOrderPaymentPayPal.jsp">
                                            <div class="panel-footer">
                                                <span class="pull-left">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน paypal</span>
                                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                                <div class="clearfix"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-12">
                                    <div class="panel panel-violet">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <!-- Receive Cash icon by Icons8 -->
                                                    <img class="icon icons8-Receive-Cash" 
                                                         src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAAB
                                                         kCAYAAABw4pVUAAAIF0lEQVR4Xu2djbUVNRCAMxWoFQgVCBUoFYgVCBUIF
                                                         QgVCBUIFSAVKBX4qECoQKhgPN81uSf3vv2Z/O3NcrPnvCPnvd1sdr7MTDI
                                                         zieLG1ZUEpKvejM64AaSzQTCADCCdSaCz7gwNGUA6k0Bn3RkaMoB0JoHOu
                                                         jM0ZADpTAKddWdoyADSlwRU9Xvn3A/OuXvOua+dcx+cczfOubciwr83va5
                                                         WQ1T1oXPuN+fcnQWJv3LOPd8SzFUCUVVAPDEO/U/OuQcigtY0v64OiKo+c
                                                         879mijZzaBcFRBVxVf8mQgj3P5BRO5mPmt+7NqAAAMo59dnfo9ZWoH2WET
                                                         wK82uqwGiqjjvf5Zg8LcVIO9EZApoNUDXBAQnjjM/v/j9jYi8MwBxItJUZ
                                                         k0brzZsKjS05syDoA1+5m7LafAA4mEnALnfcgo8gCQCGSargrnyvoGwyAv
                                                         n3M9TTRo15KOILK3si3t7NRoSJOVnW4D5MZaeEQhhFBaWza6rAxKBIZbFm
                                                         uIr/7u//H/RJAKN5xdrlTsiwqq92XW1QCIzBojvDBJuviikD18EEG+Gvj0
                                                         T6nvLaFZVNGINylMRwcw1v3YLxEP4xTmH6ZlztERoMUuvl+B4KNx7DhUz9
                                                         UhE/mhOIsz2tnpRrfd44RGttYbPeTV2/4WIPJ/rh6riN9AUfMpb/+9XFi2
                                                         r9W27M1leaG9WkkpL8kELyG00dcwlgHZjsjwMorXY/JILGKy2N0/PWjq9C
                                                         yDeX/xdAUaQSbeashcgc3kMy6Cbu+eliKT4oZJ3mZ/tHogvRsBvrF3vnXNh
                                                         NsSsazJEctZI08jtWoen/r4HICSV1uJHwCDjd3DWhhB6kAWlPkybu7m6Br
                                                         KQ5YsFeAIjEcgnEfmmGxq9r9RVdS7LF2R4C0YiEG7/acuF3xr83jWEVfaS
                                                         LyCccTBT8aIvwWTxaPMI7hqE+O+9A2HlTKnn6hUnjgaQVXHl3aCqWwDpyr
                                                         EPDRkmy64tqoqPIKK7eg2TtSqi8htU9ZFz7ndLSwVAmlaRWPq+J6dOIPFf
                                                         y0dlAvksIqXBSkv3zPd07UP8msLk2DOBdBfP2gMQa8V6KFKA41yhQjxSNyla
                                                         MKuGv7F7IF5LzM49QQBdLQhDv/cCxFKIkMDikGNnwtDdtQsgXktqQaHK/WG
                                                         vadzdAImgEN86qTpMGObdakYzk6WqCIsKjrDNOLyLHDY/hCqKNlD69Qklne
                                                         dlO3Ns0IpnIhI7/gSO291aRUNUlYgsiR5mRJZ5PUAoy3ld8qk+mxjee6tQLi
                                                         rlKRoAJX1MfTYbiE8eAYKchQXCVN/QGEZuEZjUj+75/mQgPrQNiJqzFEwJtb
                                                         MXK83xAwxzy3fFxdb4LEpJT2q5vFXAIvATUszcQ14/+7ABMxDfAbRhqjK81qBDW
                                                         2arC2u9JG7Hg6AScmmAHfep+wFJfG0pz5+9r30RiC/bDGZprdCglryw96RVm
                                                         2qL/zYiyVaTi5DRFmvp0MmMzoMME56wkxfLwA8hnP8zn1NSjAqZGTW5/qEEE
                                                         J1DW16WNDL3rPGck9JXU31/z1sWZoRLA5rBxyC8OQFiVN/SjqY8jz3Gt1Spx
                                                         fXfx9boLUp/goZbLQtbs+8fgHh1wo423RSfQiK6lw8DSvYaIjJPTbejZX5f
                                                         /NgDScnKVXhhSRNZDt+bDIKTlzC9qd/7FCDW8HZq4y3uR0uYgpoWer5ifs48
                                                         xSF6zIp11d/iu0KbD4LJMiWBWvYkse2wKyrbjM1MZhicAGQyEzaDJnYt+/bDO
                                                         SoBiDl3nf26Ng8eQjA+PlbF8Xufivbgb0wFFhU+7Xga0XGWpao4zx7UNvf70B
                                                         ZmZceDZHIbCs+lFFkUvOsIgzZiIHvVkjlZoD1Ba5ZMW4hCT+7abTxQP/rczN
                                                         EnxkDCiZxb286CwVX90VuThoZawsZSdviemNrzhWHOeYTVpXLhBk+O8vMzNbb
                                                         T1boWt1qfAzHXQdXqXaftsFP3aOZUVSv1k0QZWjEbp7sVy1LVtS0Alfp2bIYR
                                                         05uZPKlmrACEb2Rhu3oaxBSQubMJa4OI26OjODgmFpZzR1r25RAUjGZapfJY1
                                                         Yr4Y+aivZdYKHJqwmMfAGRxxo9pb0hFOrcqUgqculkrLEAuFU5hIBCGDps3Q3g
                                                         jzszVXiuxLe6whpkKYKqqZdPp+ZhgBvUkJ6czm6BSVebGlzAfxdHdWhqjqmQGU
                                                         1LVxYfVLAG59EIRv0JuulpIxArKh+vJm6TAmFxXWN8Z7ltL4V46nHI4xccfr9Q
                                                         0pYtAPAjSrGsZvljOxVqx6kOiGcbatuTUAVByfzj7iv+yr8MUgl96oV/0MeVmVh
                                                         X8VErepIpWpAAZ4ZRpolW1wgzEq/EIp5xCqa4VqUCsCyNGDav8cABMMAO5hdEl5
                                                         q3Fs820IgmI15KlcAodxfFSq3trRuQXemiZ5XSeFoKs0SblSIQ+ms/4TJWLC4fAm
                                                         MMCOwVzCOeUVLykjgYTEK8lcTgFrWAlmvw/N9kRmM20ItlkeSAhnFLFqflqF0zZ1
                                                         vGqtUG7uVZkAQlQaqtvZ2AuvhHUbLLWhlXp3y8MhgAjvqJ4sVkqh26ARNEBTCO+q
                                                         XZUd0pWWSHyUqEvPd8dkAgMgb2UfYSpcjLPEFMbLrm/WyANweC0mSFudp57CqDugVQ
                                                         Gw+6syQVsitBa3rsbIGdgiEKnJM+yM3gthT/V9u6ARGCIleFnmARMwcE0YZbQiOa5lF
                                                         rgdgvkXAB+2syvOYv34tPXXEBfDJBcAfT23ADSGZEBZADpTAKddWdoyADSmQQ6687Qk
                                                         M6A/Aei5xh5j9ON1wAAAABJRU5ErkJggg==" width="100" height="100"/>  
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div >120,000</div>
                                                    <div>New Orders!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="Admin_SaleOrderTransferMoney.jsp">
                                            <div class="panel-footer">
                                                <span class="pull-left">สรุปยอดการสั่งซื้อที่ชำระเงินด้วยการโอนเงิน</span>
                                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                                <div class="clearfix"></div>
                                            </div>
                                        </a>
                                    </div>
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
