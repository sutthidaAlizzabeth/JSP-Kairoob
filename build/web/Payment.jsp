<%-- 
    Document   : Notification
    Created on : Apr 12, 2015, 10:28:03 PM
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

    <div class="paymentdiv">
        <h2>Payment</h2>            
        <div class="col-lg-12">
            <div class="col-md-6">
                <h3>Details Payment</h3>
                <div class="col-sm-12">
                    <img src="Assets/icon/BANGKOK-1.png" class="img-responsive"><span>Bangkok Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 699-0-09667-0
                    <br>
                    Branch : Rama 1
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/GSB-1.png" class="img-responsive"/><span>GSB Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 699-0-09667-0
                    <br>
                    Branch : Rama 5
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/KBANK-1.png" class="img-responsive"><span>KBANK</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 995-2-50667-9
                    <br>
                    Branch : Rama 7
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/KRUNGSRI-1.png" class="img-responsive"><span>KRUNGSRI Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 199-0-08867-0
                    <br>
                    Branch : Rama 4
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/KTB-1.png" class="img-responsive"><span>KTB Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 199-1-09667-0
                    <br>
                    Branch : Rama 3
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/SC-1.png" class="img-responsive"><span>SC Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 689-0-09557-0
                    <br>
                    Branch : Rama 2
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/SCB-1.png" class="img-responsive"><span>SCB Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 609-0-09667-0
                    <br>
                    Branch : Ladprao
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/THANACHART-1.png" class="img-responsive"><span>THANACHART Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 799-0-08267-0
                    <br>
                    Branch : Rama 9
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/TMB.png" class="img-responsive"><span>TMB Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 499-0-09667-5
                    <br>
                    Branch : Sukhumvit
                </div>
                <div class="col-sm-12">
                    <img src="Assets/icon/UOB.png" class="img-responsive"><span>UOB Bank</span>
                    <br>
                    Account Name : Nattha Boonnumchai
                    <br>
                    Account No : 399-5-09667-8
                    <br>
                    Branch : Rachaphruk
                </div>
            </div>
            <div class="col-md-6">
                Transfer Date
                <input class="form-control" type="text" id="datepicker" style="width: 300px">
                <br>
                Amount 
                <input class="form-control" type="text" style="width: 300px;" placeholder="xxx.xx"><div style="float: right; margin-top:-25px;">Baht</div>
                <br>
                Details
                <br>
                <input type="text" class="form-control" style="width: 300px;" placeholder="Details">
                <br>
                <input class="btn btn-info" type="button" value="Add Payment">
                <a href="AccountShow.jsp"><button type="button" class="btn btn-default" value="AccountShow">Account Show</button></a>
            </div>
        </div>
    </div>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
