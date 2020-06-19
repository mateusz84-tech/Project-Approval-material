<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18.06.2020
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista projektów</title>
</head>
<body>
<p>Lista projektów:</p>
${project.name}
${project.number}

<nav class="breadcrumb is-large" aria-label="breadcrumbs">
    <a href="http://localhost:8080/user/action">Powrót do strony wyboru.</a>
</nav>
</body>
</html>
