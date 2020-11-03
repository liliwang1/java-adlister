<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/login.jsp">
    <label for="username">Username: </label>
    <input type="text" name="username" id="username"/><br><br>
    <label for="password">Password: </label>
    <input type="text" name="password" id="password"/><br><br>
    <input type="submit"/>
</form>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <% response.sendRedirect("/profile.jsp"); %>
</c:if>

</body>
</html>
