<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja Inspektorów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<H2>Rejestracja</H2>
<section class="section">
<div class="allClassesContainer">
    <form:form method="post" modelAttribute="insp" action="/register-insp">
        <div class="control">
            <form:label path="firstName" class="label"/>Imię:
            <form:input path="firstName"/>
        </div>
        <div class="control">
            <form:label path="lastName"/>Nazwisko:
            <form:input path="lastName"/>
        </div>
        <div class="control">
            <form:label path="username"/>Nazwa użytkownika:
            <form:input path="username"/>
        </div>
        <div class="control">
            <form:label path="email"/>Email:
            <form:input path="email"/>
        </div>
        <div class="control">
            <form:label path="industry"/>Branża:
            <form:input path="industry"/>
        </div>
        <div class="control">
            <form:label path="password"/>Hasło:
            <form:input path="password"/>
        </div>
        <div class="control">
            <form:button type="submit"
                         class="button is primary">Zarejestruj</form:button>
            <form:button type="reset" class="button is secondary">Wyczyść</form:button>
        </div>
        <security:csrfInput/>
    </form:form>

</div>
</section>
</body>
</html>
