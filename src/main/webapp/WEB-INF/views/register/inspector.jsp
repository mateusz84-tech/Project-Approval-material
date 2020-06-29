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
<body style="background-color: grey">
<b class="content-has-text">Rejestracja</b>
<section class="section">
<div class="leftContainer">
    <form:form method="post" modelAttribute="insp" action="/register-insp">
        <div class="field">
            <form:label path="firstName" class="label"/>Imię:
            <form:input class="input is-small" path="firstName" placeholder="Text input: Imię"/>
        </div>
        <div class="field" >
            <form:label path="lastName"/>Nazwisko:
            <form:input class="input is-small" path="lastName" placeholder="Text input: Nazwisko"/>
        </div>
        <div class="field">
            <form:label path="username"/>Nazwa użytkownika:
            <form:input class="input is-small" path="username" placeholder="Text input: Login"/>
        </div>
        <div class="field">
            <form:label path="email"/>Email:
            <p class="control has-icons-left has icon-right">
            <form:input class="input is-small" path="email" placeholder="Text input: Adres email"/>
            <span class="icon is-small is-left">
                <i class="fas fa-envelope"></i>
            </span>
        </div>
        <div class="field">
            <form:label path="industry"/>Branża:
            <form:input class="input is-small" path="industry" placeholder="Text input: Branża"/>
        </div>
        <div class="field">
            <form:label path="password"/>Hasło:
            <p class="control has-icons-left has icon-right">
            <form:input class="input is-small" path="password" placeholder="Text input: Hasło"/>
                <span class="icon is-small is-left">
                    <i class="fas fa-lock"></i>
                </span>
            </p>
        </div>
        <div class="buttons">
            <form:button class="button is-primary" type="submit">Zarejestruj</form:button>
            <form:button class="button" type="reset" >Wyczyść</form:button>
        </div>
        <security:csrfInput/>
    </form:form>
</div>
</section>
</body>
</html>
