<navbar class="navbar navbar-kairoob navbar-inverse navbar-fixed-top" role="nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-picture"></span> Kairoob</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span> 
                        <span>&nbsp;&nbsp; ${cart.items == null ? 0 : cart.size} </span>
                    </a>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> <span> User</span></a></li>
                <li><a href="<%=response.encodeURL("Logout")%>"><span class="glyphicon glyphicon-off"></span> <span> Logout</span></a></li>
            </ul>
        </div>
    </div>
</navbar>