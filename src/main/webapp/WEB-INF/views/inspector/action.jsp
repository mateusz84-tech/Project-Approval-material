<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07.06.2020
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Akcje dostępne da Inspektorów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body style="background-color: dodgerblue">
<section class="section">
    <div class="notification is-primary is-light">
        <h1 align="center">Dostępne akcje</h1>
    </div>

    <div class="buttons">
        <button class="button is-fullwidth">
            <a href="http://localhost:8080/listMaterial">Wyświetl listę materiałów</a><br>
        </button>
    </div>
    <div class="buttons">
        <button class="button is-fullwidth">
            <a href="http://localhost:8080/logout">Wyloguj</a>
        </button>
    </div>
</section>
<figure class="image is-1068x712">
    <img src="/hala.jpg"/>
</figure>
</body>
</html>
