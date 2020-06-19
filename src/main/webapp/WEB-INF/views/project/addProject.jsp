<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie projektu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Dodaj nowy projekt</h2>
<section class="section">
    <div class="allClassesContainer">
<form:form method="post" modelAttribute="project" action="/project/addProject">
    <div class="field">
    <div class="control">
    <form:label path="number"/>Numer projekty:
    <form:input path="number"/>
    </div>
    </div>
    <div class="field">
        <div class="control">
    <form:label path="name"/>Nazwa projektu:
    <form:input path="name"/>
        </div>
    </div>
    <div class="buttons">
        <form:button class="button is-primary">Dodaj</form:button>
    </div>
</form:form>
    </div>

</section>
</body>
</html>
