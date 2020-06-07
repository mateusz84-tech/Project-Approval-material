<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie użytkownika</title>
</head>
<body>
<h2>Dodaj użytkownika</h2>
</body>
<form:form method="post" modelAttribute="user" action="/add">
    Imię:
    <form:label path="firstName"/>
    <form:input path="firstName"/>
    Nazwisko:
    <form:label path="lastName"/>
    <form:input path="lastName"/>
    Nick:
    <form:label path="username"/>
    <form:input path="username"/>
    Email:
    <form:label path="email"/>
    <form:input path="email"/>
    Hasło:
    <form:label path="password"/>
    <form:input path="password"/>
    <form:button>Dodaj</form:button>
</form:form>
</html>
