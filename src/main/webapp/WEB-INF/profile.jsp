<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>

<div class="container">
    <h1>Viewing your profile.</h1>
    <h3>welcome ${sessionScope.user}</h3>
    <h3>welcome ${sessionScope.get("user")}</h3>
    <h3>welcome ${name}</h3>
    <h3>welcome ${user}</h3>
</div>

</body>
</html>
