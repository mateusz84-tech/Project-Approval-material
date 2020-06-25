<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07.06.2020
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycja statusu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zarejestruj się</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body style="background-color: #1db363">
<h2 class="subtitle is-4">Lista materiałów do akceptacji</h2>
<div class="buttons has-addons is-centered">
    <nav class="navbar">
        <div class="navbar-brand">
            <button class="buttons">
                <a class="navbar-item" href="http://localhost:8080/inspectorBuildingList">Branża budowlana</a>
            </button>
        </div>
        <div class="navbar-brand">
            <button class="buttons">
                <a class="navbar-item" href="http://localhost:8080/inspectorSanitaryList">Branża sanitarna</a>
            </button>
        </div>
        <div class="navbar-brand">
            <button class="buttons">
                <a class="navbar-item" href="http://localhost:8080/inspectorElectricalList">Branża elektryczna</a>
            </button>
        </div>
        <div class="navbar-brand">
            <button class="buttons">
                <a class="navbar-item" href="http://localhost:8080/inspector/action">Powrót do strony głównej</a>
            </button>
        </div>
    </nav>
</div>
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
                <c:forEach items="${confirmList}" var="material" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${material.materials}</td>
            <td>${material.description}</td>
            <td>${material.approved}</td>
            <td>${material.comments}</td>
            <td>${material.created}</td>
            <td>${material.updated}</td>
            <td>
                <button class="button">
                    <a href="${material.link}">Link</a>
                </button>
            </td>
            <td>
                <button class="button">
                    <a href="${pageContext.request.contextPath}/inspector/confirmMaterial?id=${material.id}">Zatwierdź</a>
                </button>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

