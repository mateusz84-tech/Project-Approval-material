<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie materiałów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<section class="section">
    <div class="allClassesContainer">
<form:form method="post" modelAttribute="materials" action="/material/add">
    <div class="field">
        <div class="control">
            <form:label path="materials"/>Nazwa materiału:
            <form:input  class="input is-small" path="materials"/>
        </div>
    </div>
    <div class="field">
        <div class="control">
            <form:label path="description"/>Opis:
            <form:textarea class="textarea is-focused"
                   placeholder="Krótki opis materiału, zastosowanie"
                   path="description"/>
        </div>
    </div>
    <div class="field">
        <div class="control">
            <form:label path="link"/>Link do dokumentów:
            <form:input path="link"/>
        </div>
    </div>
    <div class="buttons">
    <form:button type="submit" class="button is-primary">Dodaj</form:button>
    </div>
</form:form>
</div>
</section>
</body>
</html>
