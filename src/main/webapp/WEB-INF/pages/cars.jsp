<!-- CARS -->
<li class="nav-item">
    <c:if test="${pageContext.request.isUserInRole('READ_CARS')}">
        <a class="nav-link
           ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf("/")) eq '/cars.jsp' ? ' active' : ''}"
           aria-current="page"
           href="${pageContext.request.contextPath}/Cars">Cars</a>
    </c:if>
</li>
<!--USERS-->
<li class="nav-item">
<c:if test="${pageContext.request.isUserInRole('READ_USERS')}">
    <a class="nav-link
           ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf("/")) eq '/users.jsp' ? ' active' : ''}"
       aria-current="page"
       href="${pageContext.request.contextPath}/Users">Users</a>
</c:if>