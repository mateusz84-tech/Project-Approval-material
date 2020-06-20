<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 20.06.2020
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LIsta materiałów Sanitarnych</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<nav class="navbar">
    <div class="navbar-item">
        <h2>Lista materiałów sanitarnych</h2>
    </div>
    <div class="navbar-brand">
        <a class="navbar-item" href="http://localhost:8080/listMaterial">Powrót do strony głównej z materiałami</a>
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
                <c:forEach items="${sanitaryListMaterial}" var="listSanitary" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${listSanitary.materials}</td>
            <td>${listSanitary.description}</td>
            <td>${listSanitary.approved}</td>
            <td>${listSanitary.comments}</td>
            <td>${listSanitary.created}</td>
            <td>${listSanitary.updated}</td>
            <td><a href="${listSanitary.link}">Link</a></td>
            <td><a href="${pageContext.request.contextPath}/inspector/confirmMaterial?id=${listSanitary.id}">Zatwierdź</a></td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
