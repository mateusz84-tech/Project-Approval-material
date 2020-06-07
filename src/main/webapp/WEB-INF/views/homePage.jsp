<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona startowa</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body style="background-color:#1db363">
<p class="subTitle">
    <a>Strona główna</a> <b/>
    <strong>Zatwierdzanie wyrobów, materiałów budowlanych.</strong>
</p>
<div align="center">

    <a href="${pageContext.request.contextPath}/addMaterial">Dodanie nowego materiału</a><br/>
    <a href="${pageContext.request.contextPath}/deleteMaterial">Usuń materiał</a><br/>
    <a href="${pageContext.request.contextPath}/addProject">Dodaj nowy projekt</a><br/>
    <a href="${pageContext.request.contextPath}/list">Lista materiałów</a>
</div>
</body>
</html>
