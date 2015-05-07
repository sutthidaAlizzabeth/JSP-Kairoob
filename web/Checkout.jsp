<%-- 
    Document   : Checkout
    Created on : Apr 2, 2015, 10:36:16 PM
    Author     : nattha
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <script type="text/javascript" src="Assets/js/jquery-1.10.1.min.js"></script>
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
                <a class="navbar-brand" href="<%=response.encodeURL("index.jsp")%>"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
                <form action="<%= response.encodeURL("PhotoList")%>" method="post" class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" name="photosearchkey" id="form-search" class="form-control" placeholder="Search" value="${search}" required>
                    </div>
                    <button type="submit" class="btn btn-default"><span class="fa fa-search"</button>
                </form>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="${cart.items == null ? "" : "ShowCart"}">
                            <span class="glyphicon glyphicon-shopping-cart"></span> 
                            <span>&nbsp;&nbsp; ${cart.items == null ? 0 : cart.size} </span>
                        </a>
                    </li>
                    <c:choose>
                        <c:when test="${! empty user}">
                            <li><a href="<%=response.encodeURL("AccountShow")%>"><span class="glyphicon glyphicon-user"></span> <span> User</span></a></li>
                            <li><a href="<%=response.encodeURL("Logout")%>"><span class="glyphicon glyphicon-off"></span> <span> Logout</span></a></li>
                            </c:when>
                            <c:otherwise>
                            <li>
                                <a href="<%=response.encodeURL("Register")%>">
                                    <span class="glyphicon glyphicon-user"></span> 
                                    <span> Sign up</span>
                                </a>
                            </li>
                            <li><a href="<%=response.encodeURL("Login")%>"><span class="glyphicon glyphicon-lock"></span> <span> Login</span></a></li>
                            </c:otherwise>
                        </c:choose>

                </ul>
            </div>
        </div>
    </navbar>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#visa-method").hide();/*เริ่มต้นด้วย ให้ visa method หายไป */
            /*ปุ่มนี้คลิกให้ show visa method ขึ้นมา */
            $("#addpayment").click(function () {
                $(".payment").hide();
                $("#addpayment").hide();
                $("#cancelpayment").show();
                $("#visa-method").appendTo(".panel-body");
                $("#visa-method").show();
            });
            /*ปุ่มนี้คลิกให้ radiobutton visa show visa method ขึ้นมา */
            $("#visa").click(function () {
                $(".payment").hide();
                $("#addpayment").hide();
                $("#cancelpayment").show();
                $("#visa-method").appendTo(".panel-body");
                $("#visa-method").show();
                $("#checkout").text("Checkout");
            });
            /*ปุ่มนี้คลิกให้ cancel จะกลับหน้าเลือกวิธีการจ่ายตังค์ */
            $("#cancelpayment").click(function () {
                $("#cancelpayment").hide();
                $("#addpayment").show();
                $("#payments-method").show();
                $("#visa-method").hide();
                /*ปุ่มนี้คลิกให้ เมื่อคลิก radio button ยกเลิก ให้ขึ้นคำว่า Proceed to Checkout */
                $("#checkout").text("Proceed to Checkout");
                $('input[name="payment"]').attr('checked', false);/*reset radio button*/
            });
            /*ปุ่มนี้คลิกให้ เมื่อคลิก radio button paypal ให้ขึ้นคำว่า Check out With PayPal */
            $("#paypals").click(function () {
                $("#checkout").text("Check out With PayPal");
            });
            /*ปุ่มนี้คลิกให้ เมื่อคลิก radio button โอนตังค์ ให้ขึ้นคำว่า Check out  */
            $("#transfermoney").click(function () {
                $("#checkout").text("Checkout");
            });
        });
    </script>
    <section class="section-page">
        <div class="container">
            <div class="row group-all" >
                <div class="col-lg-12" >
                    <!--left-->
                    <div class="col-md-6">
                        <!--slide-->
                        <div class="col-sm-12">
                            <h1>Cart</h1>
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img class="img-thumbnail" style="width:auto; height:300px; margin: 0 auto;" src="Assets/photo/food/milktea.jpg" alt="milktea" >
                                        <div class="carousel-caption"><!--ที่ใส่ caption-->

                                        </div>
                                    </div>
                                    <div class="item">
                                        <img class="img-thumbnail " style=" width:auto; height:300px; margin: 0 auto;" src="Assets/photo/landscape/landscape.jpg" alt="landscape">
                                        <div class="carousel-caption"><!--ที่ใส่ caption-->

                                        </div>
                                    </div>
                                </div>
                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--right-->
                    <div class="col-md-6">
                        <h2>PURCHASE</h2>
                        <h3>Total: &nbsp <fmt:formatNumber pattern="#,###,##0.00" value="${cart.price}"/></h3>
                        <h3>E-mail : ${user.email}</h3> 
                        <div class="panel panel-default">
                            <div class="panel-heading"style="font-weight: bold; font-size:16pt;">
                                Payment
                                <button id="cancelpayment" class="btn-cancel btn btn-sm btn-danger pull-right">Cancel</button>
                            </div>
                            <div class="clearfix"></div>
                            <div class="panel-body">
                                <!--อย่าลบนะจ๊ะ ไม่งั้นเละ การทำ clearfix ก็คือการทำให้ block element สามารถครอบ element ข้างในที่ float อยู่ เครดิต siamhtml -->
                                <div class="clearfix"></div>
                                <!--กล่องให้เลือกวิธีการจ่ายตังค์-->
                                <div id="payments-method" class="payment">
                                    <!--เมนูให้เลือกวิธีการจ่ายตังค์-->
                                    <ul class="payment-methods"> 
                                        <li class="payment-method">
                                            <span class="pull-left"style="font-size: 13pt;" >
                                                <i class="payment-icon fa fa-money fa-2x "></i>
                                                Pay with Transfer money
                                            </span>
                                            <span class="control-radio pull-right">
                                                <input type="radio" id="transfermoney" name="payment" value="transfermoney">
                                            </span>
                                            <div class="clearfix"></div>
                                        </li>
                                        <!--เมนูให้เลือกวิธีการจ่ายตังค์แบบ VISA -->
                                        <li class="payment-method">
                                            <span class="pull-left"style="font-size: 13pt;" >
                                                <i class="payment-icon fa fa-cc-visa fa-2x "></i>
                                                Pay with Visa 
                                            </span>
                                            <span class="control-radio pull-right">
                                                <input type="radio" name="payment" value="visa" id="visa">
                                            </span>
                                            <div class="clearfix"></div>
                                        </li>
                                        <!--เมนูให้เลือกวิธีการจ่ายตังค์แบบ Paypal -->
                                        <li class="payment-method">
                                            <span class=" pull-left" style="font-size: 13pt;" >
                                                <i class="payment-icon fa fa-cc-paypal fa-2x"></i> 
                                                Pay with PayPal 
                                            </span>
                                            <span class="control-radio pull-right">
                                                <input id="paypals" type="radio" name="payment" value="paypal">
                                            </span>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--visa form-->
                        <form id="visa-method" class="form-group" action="#" method="post">
                            <div class="form-group">
                                <label>Card Number</label>
                                <input type="text" data-stripe="number" maxlength="16" size="20" tabindex="1"class="form-control"/>
                            </div>
                            <div class="wrapper-payment wrapper-month">
                                <label>Expiry Date</label>
                                <input data-stripe="exp-month" maxlength="2" placeholder="MM" size="2" tabindex="2" type="text" class="form-control"/>
                            </div>
                            <div class="wrapper-payment wrapper-year">
                                <input data-stripe="exp-year" maxlength="4" placeholder="YYYY" size="4" tabindex="3" type="text" class="form-control"/>
                            </div>
                            <div class="wrapper-payment wrapper-cvc">
                                <label>CVC</label>
                                <input class="form-control" data-stripe="cvc" maxlength="4" size="4" tabindex="4" type="text"/>
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> Remember this card
                                    </label>
                                </div>
                            </div>
                        </form>
                        <!--button submit-->
                        <div class="form-group">
                            <form action="#" method="post">
                                <button type="submit" class="btn btn-primary btn-block" value="submit" id="checkout" name="#">Proceed to Check Out</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
