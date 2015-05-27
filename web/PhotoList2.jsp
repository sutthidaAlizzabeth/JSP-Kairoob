

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <!-- Add jQuery library -->
        <script type="text/javascript" src="Assets/js/jquery-1.10.1.min.js"></script>

        <!-- Add mousewheel plugin (this is optional) -->
        <script type="text/javascript" src="Assets/js/jquery.mousewheel-3.0.6.pack.js"></script>

        <!-- Add fancyBox main JS and CSS files -->
        <script type="text/javascript" src="Assets/js/jquery.fancybox.js?v=2.1.5"></script>
        <link rel="stylesheet" type="text/css" href="Assets/css/jquery.fancybox.css?v=2.1.5" media="screen" />

        <!-- Add Button helper (this is optional) -->
        <link rel="stylesheet" type="text/css" href="Assets/css/jquery.fancybox-buttons.css?v=1.0.5" />
        <script type="text/javascript" src="Assets/js/jquery.fancybox-buttons.js?v=1.0.5"></script>

        <!-- Add Thumbnail helper (this is optional) -->
        <link rel="stylesheet" type="text/css" href="Assets/css/jquery.fancybox-thumbs.css?v=1.0.7" />
        <script type="text/javascript" src="Assets/js/jquery.fancybox-thumbs.js?v=1.0.7"></script>

        <!-- Add Media helper (this is optional) -->
        <script type="text/javascript" src="Assets/js/jquery.fancybox-media.js?v=1.0.6"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 *  Simple image gallery. Uses default settings
                 */

                $('.fancybox').fancybox();

                /*
                 *  Different effects
                 */

                // Change title type, overlay closing speed
                $(".fancybox-effects-a").fancybox({
                    helpers: {
                        title: {
                            type: 'outside'
                        },
                        overlay: {
                            speedOut: 0
                        }
                    }
                });

                // Disable opening and closing animations, change title type
                $(".fancybox-effects-b").fancybox({
                    openEffect: 'none',
                    closeEffect: 'none',
                    helpers: {
                        title: {
                            type: 'over'
                        }
                    }
                });

                // Set custom style, close if clicked, change title type and overlay color
                $(".fancybox-effects-c").fancybox({
                    wrapCSS: 'fancybox-custom',
                    closeClick: true,
                    openEffect: 'none',
                    helpers: {
                        title: {
                            type: 'inside'
                        },
                        overlay: {
                            css: {
                                'background': 'rgba(238,238,238,0.85)'
                            }
                        }
                    }
                });

                // Remove padding, set opening and closing animations, close if clicked and disable overlay
                $(".fancybox-effects-d").fancybox({
                    padding: 0,
                    openEffect: 'elastic',
                    openSpeed: 150,
                    closeEffect: 'elastic',
                    closeSpeed: 150,
                    closeClick: true,
                    helpers: {
                        overlay: null
                    }
                });

                /*
                 *  Button helper. Disable animations, hide close button, change title type and content
                 */

                $('.fancybox-buttons').fancybox({
                    openEffect: 'none',
                    closeEffect: 'none',
                    prevEffect: 'none',
                    nextEffect: 'none',
                    closeBtn: false,
                    helpers: {
                        title: {
                            type: 'inside'
                        },
                        buttons: {}
                    },
                    afterLoad: function () {
                        this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                    }
                });


                /*
                 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
                 */

                $('.fancybox-thumbs').fancybox({
                    prevEffect: 'none',
                    nextEffect: 'none',
                    closeBtn: false,
                    arrows: false,
                    nextClick: true,
                    helpers: {
                        thumbs: {
                            width: 50,
                            height: 50
                        }
                    }
                });

                /*
                 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
                 */
                $('.fancybox-media')
                        .attr('rel', 'media-gallery')
                        .fancybox({
                            openEffect: 'none',
                            closeEffect: 'none',
                            prevEffect: 'none',
                            nextEffect: 'none',
                            arrows: false,
                            helpers: {
                                media: {},
                                buttons: {}
                            }
                        });

                /*
                 *  Open manually
                 */

                $("#fancybox-manual-a").click(function () {
                    $.fancybox.open('1_b.jpg');
                });

                $("#fancybox-manual-b").click(function () {
                    $.fancybox.open({
                        href: 'iframe.html',
                        type: 'iframe',
                        padding: 5
                    });
                });

                $("#fancybox-manual-c").click(function () {
                    $.fancybox.open([
                        {
                            href: '1_b.jpg',
                            title: 'My title'
                        }, {
                            href: '2_b.jpg',
                            title: '2nd title'
                        }, {
                            href: '3_b.jpg'
                        }
                    ], {
                        helpers: {
                            thumbs: {
                                width: 75,
                                height: 50
                            }
                        }
                    });
                });


            });
        </script>
        <style type="text/css">
            .fancybox-custom .fancybox-skin {
                box-shadow: 0 0 50px #222;
            }
        </style>

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

    <div class="container">
        <div class="col-lg-12">
            <div align="right" style="margin-right: 20px;">
                <font style="opacity: 0.5;font-weight: lighter ;color:gray;">${size} Results</font>
            </div>
            <form action="<%=response.encodeURL("PhotoList")%>" method="post">
                <!--search side -->
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <p class="panel-heading">Search Photo</p>
                        <div class="panel-body">
                            <p><span class="glyphicon glyphicon-th "></span> Category</p>
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
                        <!--/ End search side CATEGORY-->
                        <!--start price search -->
                        <hr>
                        <div class="panel-body">
                            <p><span class="fa fa-money"></span> Price</p>
                            <select name="price" class="form-control">
                                <c:choose>
                                    <c:when test="${price == 'all'}">
                                        <option value="all" selected>All Price</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="all">All Price</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${price == 'less500'}">
                                        <option value="less500" selected>Less Than 500</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="less500">Less Than 500</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${price == '500-1,000'}">
                                        <option value="500-1,000" selected>500 - 1,000</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="500-1,000">500 - 1,000</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${price == '1,000-1,500'}">
                                        <option value="1,000-1,500" selected>1,000 - 1,500</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="1,000-1,500">1,000 - 1,500</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${price == '1,500-2,000'}">
                                        <option value="1,500-2,000" selected>1,500 - 2,000</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="1,500-2,000">1,500 - 2,000 </option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${price == 'more2,000'}">
                                        <option value="more2,000" selected>More Than 2,000</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="more2,000">More Than 2,000</option>
                                    </c:otherwise>
                                </c:choose> 
                            </select>
                        </div>
                        <!--End price search -->
                        <hr/>
                        <!--search button-->
                        <div class="panel-body">
                            <button type="submit" class="btn btn-default">Search</button>
                        </div>
                        <!--start price search -->
                        <hr>
                        <div class="panel-body">
                            <h2 style="text-align: center;">Advertise 338x93</h2>
                        </div>
                        <!--start price search -->
                        <hr>
                        <div class="panel-body">
                            <h2 style="text-align: center;">Advertise 338x93</h2>
                        </div>
                    </div>
                </div>
            </form>
            <!--search side -->
            <!--photo side-->
            <!--เฉพาะสองแถวแรก-->
            <c:choose>
                <c:when test="${! empty photoList}">
                    <div class=" col-md-8">
                        <div class="row">
                            <c:forEach items="${photoList}" var="p" varStatus="count" begin="13" end="16">
                                <form action="<%=response.encodeURL("AddToCart")%>" method="post">
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <a class="fancybox" href="${p.getPath()}" data-fancybox-group="gallery" title="${p.getCaption()}">
                                                <img style="height: 250px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                            </a>
                                            <div class="caption">
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td><p style="font-size:12pt"><a href="PhotoDetail?pid=${p.getId()}">${p.getCaption()}</a></p></td>
                                                        <td style="float:right;">
                                                            <a>
                                                                <input type="hidden" name="id" value="${p.getId()}">
                                                                <input type="hidden" name="kind" value="${kind}">
                                                                <input type="hidden" name="kind" value="${price}">
                                                                <input type="hidden" name="kind" value="${res}">
                                                                <input type="hidden" name="photosearchkey" value="${search}">
                                                                <div>
                                                                    <button style="margin-top: 10px;" class="btn btn-default" onclick='addtocart()'>
                                                                        <i class='fa fa-cart-plus'> add to cart</i>
                                                                    </button>
                                                                </div>
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
                    <!--จบ เฉพาะสองแถวแรก-->
                    <!--แถวที่สามเป็นต้นไป-->
                    <div class="col-md-12">
                        <div class="row">
                            <c:forEach items="${photoList}" var="p" varStatus="count" begin="17" end="25">
                                <form action="<%=response.encodeURL("AddToCart")%>" method="post">
                                    <div class="col-sm-6 col-md-4">
                                        <div class="thumbnail">
                                            <a class="fancybox" href="${p.getPath()}" data-fancybox-group="gallery" title="${p.getCaption()}">
                                                <img style="height: 250px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                            </a>
                                            <div class="caption">
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td><p style="font-size:12pt"><a href="PhotoDetail?pid=${p.getId()}">${p.getCaption()}</a></p></td>
                                                        <td style="float:right;">
                                                            <a>
                                                                <input type="hidden" name="id" value="${p.getId()}">
                                                                <input type="hidden" name="kind" value="${kind}">
                                                                <input type="hidden" name="photosearchkey" value="${search}">
                                                                <input type="hidden" name="page" value="2">
                                                                <div>
                                                                    <button style="margin-top: 10px;" class="btn btn-default" onclick='addtocart()'>
                                                                        <i class='fa fa-cart-plus'> add to cart</i>
                                                                    </button>
                                                                </div>
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
                    <!--จบ แถวที่สามเป็นต้นไป-->
                </c:when>
                <c:otherwise>
                    <div class="col-md-8">
                        <div class="alert alert-danger" role="alert">
                            <h3 style="text-align: center"> 
                                <span class="glyphicon glyphicon-exclamation-sign"></span> 
                                Not Found
                            </h3>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
            <!--End photo side-->
        </div>
    </div>
    <!--pagination-->
    <div class="text-center"><!-- ทำให้ pagination อยู่ center-->
        <nav>
            <ul class="pagination">
                <c:if test="${size > 14}">
                    <li><a href="PhotoList.jsp">1 <span class="sr-only">(current)</span></a></li>
                    <li class="active"><a href="">2 <span class="sr-only">(current)</span></a></li>
                    </c:if>
                    <c:if test="${size > 27}">
                    <li><a href="PhotoList3.jsp">3 <span class="sr-only">(current)</span></a></li>
                    </c:if>
                    <c:if test="${size > 40}">
                    <li><a href="PhotoList4.jsp">4 <span class="sr-only">(current)</span></a></li>
                    </c:if>
                    <c:if test="${size > 53}">
                    <li><a href="PhotoList5.jsp">5 <span class="sr-only">(current)</span></a></li>
                    </c:if>
            </ul>
        </nav>
    </div>
    <!--End pagination-->
    <c:if test="${! empty message}">
        <p onload="Link()"></p>
    </c:if>
    <jsp:include page="WEB-INF/include/footer.jsp"/>
</body>
</html>
