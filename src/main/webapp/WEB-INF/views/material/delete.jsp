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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Usuń materiał</h2>
<form:form method="post" modelAttribute="material" action="/deleteMaterial">
    Usuń:
    <form:label path="name"/>
</form:form>
</body>
</html>
