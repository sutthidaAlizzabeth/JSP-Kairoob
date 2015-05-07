<%-- 
    Document   : Contact
    Created on : May 7, 2015, 9:54:28 AM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

        <jsp:include page="WEB-INF/include/taghead.jsp"/>
        <title>Contact</title>
    </head>
    <body>
    <navbar class="navbar navbar-kairoob navbar-inverse navbar-fixed-top" role="nav">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=response.encodeURL("index.jsp")%>"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
                <form action="<%= response.encodeURL("PhotoList")%>" method="post" class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" name="photosearchkey" id="form-search" class="form-control" placeholder="Search" value="${search}" required>
                    </div>
                    <button type="submit" class="btn btn-default"><span class="fa fa-search"</button>
                </form>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="${cart.items == null ? "" : "ShowCart"}">
                            <span class="glyphicon glyphicon-shopping-cart"></span> 
                            <span>&nbsp;&nbsp; ${cart.items == null ? 0 : cart.size} </span>
                        </a>
                    </li>
                    <c:choose>
                        <c:when test="${! empty user}">
                            <li><a href="<%=response.encodeURL("AccountShow")%>"><span class="glyphicon glyphicon-user"></span> <span> User</span></a></li>
                            <li><a href="<%=response.encodeURL("Logout")%>"><span class="glyphicon glyphicon-off"></span> <span> Logout</span></a></li>
                            </c:when>
                            <c:otherwise>
                            <li>
                                <a href="<%=response.encodeURL("Register")%>">
                                    <span class="glyphicon glyphicon-user"></span> 
                                    <span> Sign up</span>
                                </a>
                            </li>
                            <li><a href="<%=response.encodeURL("Login")%>"><span class="glyphicon glyphicon-lock"></span> <span> Login</span></a></li>
                            </c:otherwise>
                        </c:choose>

                </ul>
            </div>
        </div>
    </navbar>

    <section class="contactus">
        <div class="text-vertical-center">
            <h1 style="color:  #FFF; font-weight: lighter">We can help you find best photo for you.</h1>
            <h2 style="color:  #FFF; font-weight: lighter" >please do reach out to us</h2>
        </div>
    </section>
    <div class="container">
        <div class="col-lg-12">
            <!--left-->
            <div style="margin-top:100px;" class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Contact Customer Support</div>
                    <div class="panel-body">
                        <form action="#" method="post">
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Your Full Name</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Message</label>
                                <textarea class="form-control"></textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                    <div class="panel-heading">Mailing Address</div>
                    <div class="panel-body">
                        Kairoob (ขายรูป)
                        ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพมหานคร 10140
                    </div>
                </div>
            </div>
            <!--right-- maps-->                
            <div style="margin-top:100px;position: relative" class="col-md-6">
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.0884548433155!2d100.49387200000001!3d13.652382999999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2a2518e02e071%3A0xf0100b33d0b31d0!2sKing+Mongkut&#39;s+University+of+Technology+Thonburi!5e0!3m2!1sen!2sth!4v1430968334374" width="600" height="450" frameborder="0" style="border:0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
