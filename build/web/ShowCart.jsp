<%-- 
    Document   : ShowCart
    Created on : Apr 4, 2015, 11:50:39 AM
    Author     : nattha
--%>
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
        <title></title>
    </head>
    <body>
        <c:choose>
            <c:when test="${! empty user}" >
                <jsp:include page="WEB-INF/include/header_login.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="WEB-INF/include/header.jsp"/>
            </c:otherwise>
        </c:choose>

        <section class="section-page">
            <div class="container">
                <h1>Your cart :::</h1>
                <table class="table table-bordered">
                    <tr>
                        <td>No</td>
                        <td>Preview</td>
                        <td>Caption</td>
                        <td>Category</td>
                        <td>Resolution</td>
                        <td>Price</td>
                    </tr>
                    <!--coding -->
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <!--ปุ่ม submit checkout update-->
                <div class="row">
                    <div class="col-lg-12 ">

                        <div class="col-md-4">
                            <div class="col-md-offset-4">
                                <a href="PhotoList.jsp"><button class="btn btn-primary" value="Continue Shopping">Continue Shopping</button></a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-offset-8">
                                <a href="Checkout.jsp"><button class="btn btn-success" value="checkout">Checkout</button></a>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
