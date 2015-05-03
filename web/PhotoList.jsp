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
            $(document).ready(function() {
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
                    afterLoad: function() {
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

                $("#fancybox-manual-a").click(function() {
                    $.fancybox.open('1_b.jpg');
                });

                $("#fancybox-manual-b").click(function() {
                    $.fancybox.open({
                        href: 'iframe.html',
                        type: 'iframe',
                        padding: 5
                    });
                });

                $("#fancybox-manual-c").click(function() {
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
        <c:choose>
            <c:when test="${! empty user}" >
                <jsp:include page="WEB-INF/include/header_login.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="WEB-INF/include/header.jsp"/>
            </c:otherwise>
        </c:choose>
        
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
                                                            <a class="fancybox" href="${p.getPath()}" data-fancybox-group="gallery" title="${p.getCaption()}">
                                                                <img style="height: 250px;" src="${p.getPath()}" alt="${p.getCaption()}">
                                                            </a>
                                                            <div class="caption">
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td><h3>${p.getCaption()}</h3></td>
                                                                        <td style="float: right;">
                                                                            <a>
                                                                                <input type="hidden" name="id" value="${p.getId()}">
                                                                                <div>
                                                                                    <button onclick='addtocart()'>
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
