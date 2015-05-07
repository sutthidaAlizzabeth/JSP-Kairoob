<%-- 
    Document   : HistoryShopping
    Created on : Apr 11, 2015, 11:31:41 PM
    Author     : Boom
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kairoob</title>
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
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
        <div align="center" class='divcen'>
            <div align="center">
                <h2>History of Shopping</h2>
            </div>
            <table class="history">
                <tr>
                    <td>No</td>
                    <td>Order</td>
                    <td>Price</td>
                    <td>Status</td>
                    <td>Details</td>
                    <td>Add Payment</td>
                </tr>
                <tr>
                    <td colspan='6'>
                        ( Backend )                   
                    </td>
                </tr>
            </table>
        </div>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
