<%-- 
    Document   : HistoryShopping
    Created on : Apr 11, 2015, 11:31:41 PM
    Author     : Boom
--%>

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
        <jsp:include page="WEB-INF/include/header.jsp"/>
    <div align="center" class='divcen'>
        <div align="center">
            <h2>ประวัติการซื้อสินค้า</h2>
        </div>
        <table class="history">
            <tr>
                <td>ลำดับ</td>
                <td>รายการ</td>
                <td>ราคา</td>
                <td>สถานะ</td>
                <td>รายละเอียด</td>
                <td>แจ้งการชำระเงิน</td>
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
