<%-- 
    Document   : AccountShow
    Created on : Apr 12, 2015, 1:40:43 PM
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
        <div class="divcen" align="center">
            <h1>Account</h1>
            <table class="accountedit">
                <tr>
                    <td colspan="2" rowspan="9">picture</td>
                    <td colspan="2">Identity Card <font style="color: red;">** require</font></td>
                </tr>
                <tr>
                    <td colspan="2">${user.idenNum == 0? "-" : user.idenNum}</td>
                </tr>
                <tr>
                    <td>
                        First Name
                    </td>
                    <td>
                        Last Name
                    </td>
                </tr>
                <tr>
                    <td>
                        ${user.firstName == null? "-" : user.firstName}
                    </td>
                    <td>
                        ${user.lastName == null? "-" : user.lastName}
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Email</td>
                </tr>
                <tr>
                    <td colspan="2">${user.email == null? "-" : user.email}</td>
                </tr>
                <tr>
                    <td colspan="2">Mobile Number</td>
                </tr>
                <tr>
                    <td colspan="2">${user.tel == null? "-" : user.tel}</td>
                </tr>
                <tr>
                    <td>
                        <a href="AccountEdit.jsp"><input type="button" value="แก้ไขข้อมูล"></a>
                    </td>
                </tr>
            </table>
        </div>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
