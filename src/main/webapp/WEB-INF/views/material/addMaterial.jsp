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
</head>
<body>
<form:form method="post" modelAttribute="material" action="/addMaterial">
    Nazwa materiału:
    <form:label path="materials"/>
    <form:input path="materials"/>
    Opis:
    <form:label path="description"/>
    <form:textarea path="description"/>
    <form:button>Dodaj</form:button>
</form:form>
</body>
</html>
