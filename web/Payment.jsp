<%-- 
    Document   : Notification
    Created on : Apr 12, 2015, 10:28:03 PM
    Author     : Boom
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/include/taghead.jsp"/>
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

        <div class="paymentdiv">
            <h2>Add Payment</h2>
            <table class="payment">
                <tr>
                    <td>Details Payment</td>
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="3">Account</td>
                    <td><input type="radio" name="bank">1</td>
                </tr>
                <tr>
                    <td><input type="radio" name="bank">2</td>
                </tr>
                <tr>
                    <td><input type="radio" name="bank">3</td>
                </tr>
                <tr>
                    <td>Date Transfer</td>
                    <td><input class="form-control" type="text" id="datepicker" style="width: 300px"></td>
                </tr>
                <tr>
                    <td>Monty</td>
                    <td><input class="form-control" type="text" style="width: 300px;" placeholder="xxx.xx"></td>
                    <td>Baht</td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td><input type="text" style="width: 300px;" placeholder="Date"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn btn-default" type="button" value="Add Payment"></td>
                </tr>
            </table>
        </div>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
