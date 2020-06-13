
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

<h2>Czy na pewno chcesz usunąć:</h2><br>
<div>
    <p>Nazwa: ${materials.materials}</p><br>

</div>
<form:form method="post" modelAttribute="materials" action="/material/delete">
<%--    <input:hidden path="materials" id="${materials.id}" name="id"/>--%>
    <div class="buttons">
        <form:hidden path="id"/>
        <form:button class="button is-red">Tak</form:button>
    </div>
</form:form>

<form:form method="get" modelAttribute="materials" action="/material/list">
    <div class="buttons">
        <form:button class="button is-secondary">Nie</form:button>
    </div>
</form:form>
</div>

</body>
</html>
