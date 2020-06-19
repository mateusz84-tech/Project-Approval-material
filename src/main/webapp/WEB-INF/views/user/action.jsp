<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07.06.2020
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Akcje dostępne dla Inżynierów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Dostępne akcje</h2>
<nav class="breadcrumb is-large" aria-label="breadcrumbs">
    <ul>
        <li><a href="${pageContext.request.contextPath}/project/addProject">Dodaj nowy projekt</a></li>
        <li><a href="${pageContext.request.contextPath}/material/add">Dodaj nowy materiał</a></li>
        <li><a href="${pageContext.request.contextPath}/material/list">Lista materiałów</a></li>
        <li><a href="http://localhost:8080/logout">Wyloguj</a></li>
    </ul>
</nav>
<p>Lista projektów</p>
${project}
</body>
</html>
