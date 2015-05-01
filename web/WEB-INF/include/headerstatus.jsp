<%-- 
    Document   : headerstatus
    Created on : May 1, 2015, 3:12:33 PM
    Author     : Alizzabeth
--%>

<c:choose>
    <c:when test="${! empty user}">
        <jsp:include page="header_login.jsp"/>
    </c:when>
    <c:otherwise>
        <jsp:include page="header.jsp"/>
    </c:otherwise>
</c:choose>
