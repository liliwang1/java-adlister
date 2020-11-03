<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ include file="partials/head.jsp" %>
<body>
<%@ include file="partials/navbar.jsp" %>
<h3>Please Log In</h3>
<form method="POST" action="<c:url value="/login.jsp"/>">
    <label for="username">Username: </label>
    <input type="text" name="username" id="username"/><br><br>
    <label for="password">Password: </label>
    <input type="text" name="password" id="password"/><br><br>
    <input type="submit"/>
</form>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <% response.sendRedirect("/profile.jsp"); %>
</c:if>

<%@ include file="partials/footer.jsp" %>
</body>
</html>
