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
</head>
<body>
<h2>Dodaj nowy projekt</h2>
<form:form method="post" modelAttribute="project" action="/addProject">
    Numer projekty:
    <form:label path="number"/>
    <form:input path="number"/>
    Nazwa projektu:
    <form:label path="name"/>
    <form:input path="name"/>
    <form:button>Dodaj</form:button>
</form:form>
</body>
</html>
