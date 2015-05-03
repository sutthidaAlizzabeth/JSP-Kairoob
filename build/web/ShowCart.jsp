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
                <c:choose>
                    <c:when test="${! empty cart}">
                        <table class="table table-bordered">
                            <tr>
                                <td>No</td>
                                <td>Preview</td>
                                <td>Caption</td>
                                <td>Category</td>
                                <td>Resolution</td>
                                <td>Price</td>
                                <td>Delete</td>
                            </tr>
                            <!--coding -->
                            <c:forEach items="${cart.items}" var="item" varStatus="no">
                                <tr>
                                    <td>${no.index+1}</td>
                                    <td><img width="50px" height="50px" src="${item.p.path}" /></td>
                                    <td>${item.p.caption}</td>
                                    <td>${item.p.categoryName}</td>
                                    <td>${item.p.resolution}</td>
                                    <td>${item.p.price}</td>
                                    <td>
                                        <form action="<%= response.encodeURL("RemoveFormCart")%>" method="post">
                                            <input type="hidden" name="pid" value="${item.p.id}" />
                                            <button type="submit">
                                                <i class='glyphicon glyphicon-trash'></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                    <c:otherwise>
                        Empty
                    </c:otherwise>
                </c:choose>
                <!--ปุ่ม submit checkout update-->
                <div class="row">
                    <div class="col-lg-12 ">

                        <div class="col-md-4">
                            <div class="col-md-offset-4">
                                <a href="<%=response.encodeURL("PhotoList")%>"><button class="btn btn-primary" value="Continue Shopping">Continue Shopping</button></a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-offset-8">
                                <a href="<%=response.encodeURL("Checkout")%>"><button class="btn btn-success" value="checkout">Checkout</button></a>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
