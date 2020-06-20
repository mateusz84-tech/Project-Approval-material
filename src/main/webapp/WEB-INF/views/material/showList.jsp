<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista Materiałów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zarejestruj się</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body style="background-color: lightsteelblue">
<h2 style="color:cornsilk">Lista materiałów</h2><br>
<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="http://localhost:8080/material/add">Dodaj następny</a>
    </div>
    <div class="navbar-brand">
    <a class="navbar-item" href="http://localhost:8080/user/action">Powrót do głównej strony</a>
    </div>
    <div class="navbar-brand">
    <a class="navbar-item" href="http://localhost:8080/material/buildingList">Materiały branża budowlana</a>
    </div>
    <div class="navbar-brand">
    <a class="navbar-item" href="http://localhost:8080/material/sanitaryList">Materiały branża sanitarna</a>
    </div>
    <div class="navbar-brand">
    <a class="navbar-item" href="http://localhost:8080/material/electricalList">Materiały branża elektryczna</a>
    </div>
</nav>
    <div class="table-container">
<table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth" style="background-color: lightsteelblue">
    <tr>
        <th>Lp.</th>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Status</th>
        <th>Uwagi</th>
        <th>Data dodania</th>
        <th>Data edycji</th>
        <th>Link do dokumentów</th>
        <th>Akcje</th>
    <td>
        <c:forEach items="${materials}" var="material" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${material.materials}</td>
            <td>${material.description}</td>
            <td>${material.approved}</td>
            <td>${material.comments}</td>
            <td>${material.created}</td>
            <td>${material.updated}</td>
            <td><a href="${material.link}">Link</a></td>
            <td><a href="/material/edit?id=${material.id}">Edytuj</a></td>
            <td><a href="/material/delete?id=${material.id}">Usuń</a></td>
        </tr>
        </c:forEach>
    </td>
</tr>
</table>
    </div>

</body>
</html>
