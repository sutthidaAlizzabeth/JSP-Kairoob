<%-- 
    Document   : AccountEdit
    Created on : Apr 12, 2015, 2:47:00 PM
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

    <div class="divcen" align="center">
        <h1>Account</h1>
        <form action="<%= response.encodeURL("AccountEdit")%>" method="post">
            <input type="hidden" name="id" value="${user.id}">
            <table class="accountedit">
                <tr>
                    <td style="font-weight: bold" colspan="2" rowspan="9">picture<br><span style="font-size:9em; margin-left: -30px;" class="fa fa-user fa-5x"></span></td>
                    <td colspan="2">Identity Card <font style="opacity: 0.6;font-weight: lighter ;color:gray;font-size:13pt">** require</font></td>
                </tr>
                <tr>
                    <td colspan="2"><input name="idenNum" class="form-control" type="text" style="width: 450px" value="${user.idenNum == 0? "" : user.idenNum}"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold" >
                        First Name
                    </td>
                    <td style="font-weight: bold" >
                        Last Name
                    </td>
                </tr>
                <tr>
                    <td>
                        <input name="firstName" class="form-control" type="text" style="width: 200px" placeholder="name" value="${user.firstName == null? "" : user.firstName}">
                    </td>
                    <td>
                        <input name="lastName" class="form-control"  type="text" style="width: 200px" placeholder="surname" value="${user.lastName == null? "" : user.lastName}">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold" colspan="2">E-mail</td>
                </tr>
                <tr>
                    <td colspan="2"><input name="email" class="form-control"  type="text" style="width: 450px" placeholder="xxx@xxx" value="${user.email == null? "" : user.email}" readonly></td>
                </tr>
                <tr>
                    <td style="font-weight: bold" colspan="2">Mobile Phone</td>
                </tr>
                <tr>
                    <td colspan="2"><input name="tel" class="form-control"  type="text" style="width: 450px" placeholder="xxx-xxxxxxx" value="${user.tel == null? "" : user.tel}"></td>
                </tr>
                <hr/>
                <tr>
                    <td style="font-weight: bold" colspan="2">New Password</td>
                </tr>
                <tr>
                    <td colspan="2"><input name="newPass" class="form-control"  type="text" style="width: 450px" placeholder="New Password" ></td>
                </tr>
                <tr>
                    <td style="font-weight: bold" colspan="2">Re-New Password</td>
                </tr>
                <tr>
                    <td colspan="2"><input name="reNewPass" class="form-control"  type="text" style="width: 450px" placeholder="Re-New Password" ></td>
                </tr>
                <tr>
                    <td style="font-weight: bold" colspan="2">Old Password</td>
                </tr>
                <tr>
                    <td colspan="2"><input name="oldNewPass" class="form-control"  type="text" style="width: 450px" placeholder="Old Password" ></td>
                </tr>
                <tr>
                    <td>
                        <input class="btn btn-default" type="submit" value="Update">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <c:if test="${! empty message}">
        <script type="text/javascript">
            alert("${message}");
        </script>
    </c:if>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
