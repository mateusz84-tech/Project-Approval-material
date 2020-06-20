<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18.06.2020
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista projektów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<%--<p>Nazwa budowy: ${project.name}</p>--%>
<%--<p>Numer budowy ${project.number}</p>--%>
<h2>Lista budów</h2>
<table class="table is bordered is-striped ui-narrow is-hoverable is-fullwidth" style="background-color: lightsteelblue">
    <tr>
        <th>Lp.</th>
        <th>Nazwa budowy</th>
        <th>Numer budowy</th>
        <th>Wybierz</th>
        <th>Usuń</th>
    </tr>
    <c:forEach items="${project}" var="project" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${project.name}</td>
            <td>${project.number}</td>
            <td><a href="http://localhost:8080/material/list">Lista materiałów</a></td>
            <td><a href="http://localhost:8080/project/delete?id=${project.id}">Usuń</a></td>
        </tr>
    </c:forEach>
</table>

<nav class="breadcrumb is-large" aria-label="breadcrumbs">
    <a href="http://localhost:8080/user/action">Powrót do strony wyboru.</a>
</nav>
</body>
</html>
