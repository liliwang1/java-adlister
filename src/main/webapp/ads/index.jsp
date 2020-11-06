<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<div class="container">
    <c:forEach var="ad" items="${ads}">
        <h4>${ad.id}   ${ad.title}</h4>
        <div>${ad.description}</div>
        <hr>
    </c:forEach>
</div>

</body>
</html>
