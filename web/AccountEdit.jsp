<%-- 
    Document   : AccountEdit
    Created on : Apr 12, 2015, 2:47:00 PM
    Author     : Boom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="include/taghead.jsp"/>
    </head>
    <body>
        <jsp:include page="include/header.jsp"/>
        <div class="divcen" align="center">
            <h1>Account</h1>
            <table class="accountedit">
                <tr>
                    <td colspan="2" rowspan="9">picture</td>
                    <td colspan="2">เลขบัตรประจำตัวประชาชน</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" style="width: 450px"></td>
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
                        <input type="text" style="width: 200px" placeholder="name">
                    </td>
                    <td>
                        <input type="text" style="width: 200px" placeholder="surname">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">E-mail</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" style="width: 450px" placeholder="xxx@xxx"></td>
                </tr>
                <tr>
                    <td colspan="2">เบอร์โทรศัพท์</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" style="width: 450px" placeholder="xxx-xxxxxxx"></td>
                </tr>
                <tr>
                    <td>
                        <a href="#"><input type="button" value="ยืนยันข้อมูล"></a>
                    </td>
                </tr>
            </table>
        </div>
        <jsp:include page="include/footer.jsp"/>
    </body>
</html>
