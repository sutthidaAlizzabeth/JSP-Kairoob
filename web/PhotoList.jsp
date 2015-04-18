<%-- 
    Document   : PhotoList
    Created on : Apr 2, 2015, 10:36:16 PM
    Author     : nattha
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List" %>
<%@page import="Model.Photo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>KaiRoob</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/thumbnail-gallery.css">
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
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form action="PhotoList" method="post">
                    <h1>Photo Search</h1>
                    <div class="container">
                        <div class="col-md-1 search-photo">
                            <h4>Search</h4>
                        </div>
                        <div class="col-md-2 search-photo">
                            <select name="kind" class="form-control">
                                <option value="all">All</option>
                                <option value="animals">Animals</option>
                                <option value="blackandwhite">Black & White</option>
                                <option value="cityscape">Cityscape</option>
                                <option value="food">Food</option>  
                                <option value="landscape">Landscape</option> 
                                <option value="nature">Nature</option>
                                <option value="people">People</option>
                                <option value="toy">Toy</option>
                                <option value="transportation">Transportation</option>
                            </select>
                        </div>
                        <div class="col-md-8 search-photo">
                            <input type="text" class="form-control" name="photosearchkey" value="${param.photosearchkey}">
                        </div>
                        <div class="col-md-1 search-photo">
                            <button type="submit" class="btn btn-default">Search</button>
                        </div>
                    </div>
                </form>
                <br/>
                <c:choose>
                    <c:when test="${! empty photoList}">
                        <table>
                            <c:forEach items="${photoList}" var="p" varStatus="count">
                                <c:if test="${(count.index+1)%3 == 1}">
                                    <tr>
                                    </c:if>
                                    <td class="col-lg-4">
                                        <img width="100px" src="${p.getPath()}" alt="${p.getCaption()}" />
                                    </td>
                                    <c:if test="${(count.index+1)%3 == 0}">
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </table>
                    </c:when>
                    <c:otherwise>
                            <h3 style="color:red;">Not Found</h3>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
