<%-- 
    Document   : Notification
    Created on : Apr 12, 2015, 10:28:03 PM
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
        <div class="paymentdiv">
            <h2>แจ้งการชำระเงิน</h2>
            <table class="payment">
                <tr>
                    <td>รายละเอียดการโอนเงิน</td>
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="3"">บัญชีที่โอนเงิน</td>
                    <td><input type="radio" name="bank">1</td>
                </tr>
                <tr>
                    <td><input type="radio" name="bank">2</td>
                </tr>
                <tr>
                    <td><input type="radio" name="bank">3</td>
                </tr>
                <tr>
                    <td>วันที่โอนเงิน</td>
                    <td><input type="text" id="datepicker" style="width: 300px"></td>
                </tr>
                <tr>
                    <td>จำนวนเงิน</td>
                    <td><input type="text" style="width: 300px;" placeholder="xxx.xx"></td>
                    <td>บาท</td>
                </tr>
                <tr>
                    <td>รายละเอียดอื่นๆ</td>
                    <td><input type="text" style="width: 300px;" placeholder="เวลาที่โอนเงิน"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="button" value="แจ้งชำระเงิน"></td>
                </tr>
            </table>
        </div>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
