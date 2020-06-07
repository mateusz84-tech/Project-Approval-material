<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuwanie materiału</title>
</head>
<body>
<h2>Usuń materiał</h2>
<form:form method="post" modelAttribute="material" action="/deleteMaterial">
    Usuń:
    <form:label path="name"/>
</form:form>
</body>
</html>
