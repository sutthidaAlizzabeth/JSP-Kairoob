<%-- 
    Document   : Register
    Created on : Apr 2, 2015, 9:38:47 PM
    Author     : nattha
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/thumbnail-gallery.css">
        <link rel="stylesheet" href="Assets/csss/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="Assets/js/kairoob.js"></script>
    </head>
    <body>
        <jsp:include page="WEB-INF/include/headerstatus.jsp"/>
        <c:if test="${! empty message}">
            <script type="text/javascript">
                alert("${message}");
            </script>
        </c:if>
        <section class="section-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-md-6">
                            <h2>Register Free</h2>
                            <p>สมาชิกแบบธรรมดา อัพโหลดรูปได้ 10 รูป ต่อ สัปดาห์</p>
                            <p>สมัครวันนี้ทดลองแบบ VIP 14 วัน</p>
                            <p>สมาชิก VIP เดือนละ 350 บาท</p>
                        </div>
                        <div class="col-md-6 group-all">
                            <form id="regis" name='regis' action="<%=response.encodeURL("Register")%>" method="post"> 
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input id='username' type="email" class="form-control" name="username" placeholder="E-mail" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input id='pass' type="password" class="form-control" name="password" placeholder="password" required>
                                </div>
                                <div class="form-group">
                                    <label>RePassword</label>
                                    <input id='repass' type="password" class="form-control" name="repassword" placeholder="repassword" required>
                                </div>
                                <input onclick="return sub()" type="submit" class="btn btn-success">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
