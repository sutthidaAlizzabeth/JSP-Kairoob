<navbar class="navbar navbar-kairoob navbar-inverse navbar-fixed-top" role="nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
            <form action="" method="" class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" name="photosearchkey" id="form-search" class="form-control" placeholder="Search" value="${param.photosearchkey}" required>
                </div>
                <button type="submit" class="btn btn-default"><span class="fa fa-search"</button>
            </form>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<%=response.encodeURL("ShowCart")%>">
                        <span class="glyphicon glyphicon-shopping-cart"></span> 
                        <span>&nbsp;&nbsp; ${cart.items == null ? 0 : cart.size} </span>
                    </a>
                </li>
                <li><a href="<%=response.encodeURL("AccountShow")%>"><span class="glyphicon glyphicon-user"></span> <span> User</span></a></li>
                <li><a href="<%=response.encodeURL("Logout")%>"><span class="glyphicon glyphicon-off"></span> <span> Logout</span></a></li>
            </ul>
        </div>
    </div>
</navbar>