<%-- 
    Document   : Authentication
    Created on : May 3, 2015, 11:51:06 PM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="WEB-INF/include/taghead.jsp"/>

        <title>Authentication</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/include/header.jsp"/>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div id="page-Authentication" class="jumbotron">
                        <p>คุณได้สมัครสมาชิกเป็นที่เรียบร้อยแล้ว</p>
                        <p>กรุณา Login อีกครั้งเพื่อเข้าสู่ Web Kairoob</p>
                        <a href="Login.jsp"><button class="btn btn-lg btn-success">Login</button></a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
