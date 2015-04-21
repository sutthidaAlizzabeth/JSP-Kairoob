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
                    <form action="<%=response.encodeURL("PhotoList")%>" method="post">
                        <h1>Photo Search</h1>
                        <div class="container">
                            <div class="col-md-1 search-photo">
                                <h4>Search</h4>
                            </div>
                            <div class="col-md-2 search-photo">
                                <select name="kind" class="form-control">
                                    <c:choose>
                                        <c:when test="${kind == 'all'}">
                                            <option value="all" selected>All</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="all">All</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${kind == 'animals'}">
                                            <option value="animals" selected>Animals</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="animals">Animals</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${kind == 'blackandwhite'}">
                                            <option value="blackandwhite" selected>Black & White</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="blackandwhite">Black & White</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${kind == 'cityscape'}">
                                            <option value="cityscape" selected>Cityscape</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="cityscape">Cityscape</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${kind == 'food'}">
                                            <option value="food" selected>Food</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="food">Food</option>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${kind == 'landscape'}">
                                            <option value="landscape" selected>Landscape</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="landscape">Landscape</option>
                                        </c:otherwise>
                                    </c:choose>  
                                    <c:choose>
                                        <c:when test="${kind == 'nature'}">
                                            <option value="nature" selected>Nature</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="nature">Nature</option>
                                        </c:otherwise>
                                    </c:choose>  
                                    <c:choose>
                                        <c:when test="${kind == 'people'}">
                                            <option value="people" selected>People</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="people">People</option>
                                        </c:otherwise>
                                    </c:choose>  
                                    <c:choose>
                                        <c:when test="${kind == 'toy'}">
                                            <option value="toy" selected>Toy</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="toy">Toy</option>
                                        </c:otherwise>
                                    </c:choose> 
                                    <c:choose>
                                        <c:when test="${kind == 'transportation'}">
                                            <option value="transportation" selected>Transportation</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="transportation">Transportation</option>
                                        </c:otherwise>
                                    </c:choose> 

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
                            <section class="section-page">
                                <div class="container">
                                    <div class="container">
                                        <div class="row">
                                            <c:forEach items="${photoList}" var="p" varStatus="count">
                                                <form action="<%=response.encodeURL("AddToCart")%>" method="post">
                                                    <div class="col-sm-6 col-md-4">
                                                        <div class="thumbnail">
                                                            <img style="max-height: 230px; max-width: 350px; min-height: 230px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                                            <div class="caption">
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td><h3>${p.getCaption()}</h3></td>
                                                                        <td style="float: right;">
                                                                            <a>
                                                                                <input type="hidden" value="${p.getId()}">
                                                                                <input type="submit" value="add to cart">
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </c:when>
                        <c:otherwise>
                            <h3 style="color:red; text-align: center;">Not Found</h3>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
        <jsp:include page="WEB-INF/include/footer.jsp"/>
    </body>
</html>
