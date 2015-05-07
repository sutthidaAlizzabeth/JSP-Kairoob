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
                        <h3>Congratulations !!! You have successfully registered with Kairoob.com</h3>
                        <p>You will login with this e-mail address</p>
                        <a href="<%= response.encodeURL("Login") %>"><button class="btn btn-lg btn-success">Login</button></a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
