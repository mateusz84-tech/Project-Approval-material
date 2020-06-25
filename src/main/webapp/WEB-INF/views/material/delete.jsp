
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuwanie materiału</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<div class="column is-mobile is-centered">
    <div class="column is-half">
        <p class="bd-notification is-primary">
            <code class="html">Czy na pewno chcesz usunąć:</code><br>
        </p>
    </div>
<div>
    <p>Nazwa: ${materials.materials}</p><br>

</div>
<div class="field has-addons">
<form:form method="post" modelAttribute="materials" action="/material/delete">
<%--    <input:hidden path="materials" id="${materials.id}" name="id"/>--%>
        <form:hidden path="id"/>
        <button class="button is-danger is-outlined">
            <span>Tak</span>
            <span class="icon is-small">
                <i class="fas fa-times"></i>
            </span>
        </button>
</form:form>

<form:form method="get" modelAttribute="materials" action="/material/list">
    <button class="button is-danger is-outlined">
        <span>Nie</span>
        <span class="icon is-small">
            <i class="fas"></i>
        </span>
    </button>
</form:form>
</div>
</body>
</html>
