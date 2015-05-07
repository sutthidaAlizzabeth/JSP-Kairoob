<%-- 
    Document   : Login
    Created on : Apr 2, 2015, 9:38:19 PM
    Author     : nattha
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/thumbnail-gallery.css">
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>


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

        <section class="section-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-md-6">
                            <form action="<%= response.encodeURL("Login")%>" method="post">
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input type="email" class="form-control" name="username" placeholder="E-mail" value="${param.username}" required autofocus>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="password" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h2>Need an account</h2>
                            <a href="<%= response.encodeURL("Register") %>" ><button type="submit" class="btn btn-success btn-lg" name="submit" >Sign Up</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <c:if test="${! empty message}">
            ${message}
            <br/>
            ${user.email}
        </c:if>

        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
