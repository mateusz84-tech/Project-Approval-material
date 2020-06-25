<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 20.06.2020
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista materiałów branża budowlana</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<nav class="navbar">
    <div class="navbar-item">
        <h2>Lista materiałów budowlanych</h2>
    </div>
    <nav class="navbar">
        <div class="navbar-brand">
                <a class="navbar-item" href="http://localhost:8080/listMaterial">Powrót do strony głównej z materiałami</a>
        </div>
    </nav>
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
                <c:forEach items="${buildingListMaterial}" var="listBuilding" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${listBuilding.materials}</td>
            <td>${listBuilding.description}</td>
            <td>${listBuilding.approved}</td>
            <td>${listBuilding.comments}</td>
            <td>${listBuilding.created}</td>
            <td>${listBuilding.updated}</td>
            <td>
                <button class="button">
                    <a href="${listBuilding.link}">Link</a>
                </button>
            </td>
            <td>
                <button class="button">
                <a href="${pageContext.request.contextPath}/inspector/confirmMaterial?id=${listBuilding.id}">Zatwierdź</a>
                </button>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
