<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 20.06.2020
  Time: 08:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista materiałów budowlanych</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Lista materiałów branży budowlanej</h2>
<a href="http://localhost:8080/material/list">Powrót do strony głównej z materiałami</a>
<table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth" style="background-color: lightsteelblue">
    <tr>
            <th>Lp</th>
            <th>Nazwa</th>
            <th>Opis</th>
            <th>Status</th>
            <th>Uwagi</th>
            <th>Data dodania</th>
            <th>Data edycji</th>
            <th>Link do dokumentów</th>
            <th>Akcje</th>
        <td>
            <c:forEach items="${buildingListMaterial}" var="buildingMaterial" varStatus="stat">
                <tr>
                    <td>${stat.count}</td>
                    <td>${buildingMaterial.materials}</td>
                    <td>${buildingMaterial.description}</td>
                    <td>${buildingMaterial.approved}</td>
                    <td>${buildingMaterial.comments}</td>
                    <td>${buildingMaterial.created}</td>
                    <td>${buildingMaterial.updated}</td>
                    <td><a href="${buildingMaterial.link}">Link</a></td>
                    <td><a href="/material/edit?id=${buildingMaterial.id}"> Edytuj</a></td>
                    <td><a href="/material/delete?id${buildingMaterial.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </td>
    </tr>

</table>
</body>
</html>