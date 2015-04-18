<%-- 
    Document   : AccountShow
    Created on : Apr 12, 2015, 1:40:43 PM
    Author     : Boom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/include/taghead.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/include/header.jsp"/>
        <div class="divcen" align="center">
            <h1>Account</h1>
            <table class="accountedit">
                <tr>
                    <td colspan="2" rowspan="9">picture</td>
                    <td colspan="2">เลขบัตรประจำตัวประชาชน</td>
                </tr>
                <tr>
                    <td colspan="2">123456789456</td>
                </tr>
                <tr>
                    <td>
                        ชื่อ
                    </td>
                    <td>
                        นามสกุล
                    </td>
                </tr>
                <tr>
                    <td>
                        Abc
                    </td>
                    <td>
                        Cde
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Email</td>
                </tr>
                <tr>
                    <td colspan="2">abc@mail.com</td>
                </tr>
                <tr>
                    <td colspan="2">เบอร์โทรศัพท์</td>
                </tr>
                <tr>
                    <td colspan="2">xxx-xxxxxx</td>
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
