<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 20.06.2020
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista materiałów branża elektryczna</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Lista materiałów branża elektryczna</h2>
<a href="${pageContext.request.contextPath}/material/list">Powrót do strony głównej z materiałami</a>
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
            <c:forEach items="${electricalListMaterial}" var="electricalMaterial" varStatus="stat">
    <tr>
        <td>${stat.count}</td>
        <td>${electricalMaterial.materials}</td>
        <td>${electricalMaterial.description}</td>
        <td>${electricalMaterial.approved}</td>
        <td>${electricalMaterial.comments}</td>
        <td>${electricalMaterial.created}</td>
        <td>${electricalMaterial.updated}</td>
        <td><a href="${electricalMaterial.link}">Link</a></td>
        <td><a href="${pageContext.request.contextPath}/material/edit?id=${electricalMaterial.id}"> Edytuj</a></td>
        <td><a href="${pageContext.request.contextPath}/material/delete?id${electricalMaterial.id}">Usuń</a></td>
    </tr>
    </c:forEach>
    </td>
    </tr>

</table>
</body>
</html>
