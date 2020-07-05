<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06.06.2020
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Strona główna</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>

</head>
<body style="background-color: darkcyan">

<section class="section">
    <div class="container">
        <div class="content has-text-centered">
        <p class="Title 1">Witaj w programie</p>
        </div>
        <div class="content has-text-centered">
        <p class="subTitle is 3">
            <strong>Zatwierdzenie wyrobów, materiałów budowlanych</strong>
        </p>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="columns">
            <div class="column is-half">
                <a style="color: lightgreen" href="${pageContext.request.contextPath}/register-insp">Inspektorzy</a><br/>
            </div>
            <div class="column is-half">
                <a style="color: lightgreen" href="${pageContext.request.contextPath}/register-inz">Inżynier</a>
            </div>
        </div>
    </div>
</section>
<div class="container">
<figure class="image is-32x32px">
    <img src="hala.jpg" width="1068" height="712">
</figure>
</div>
<progress class="progress is small is-primary" max="100">15%</progress>
<footer class="footer" style="">
    <div class="content has-text-centered">
        <p>
            <strong>Made by Mateusz Kocierz</strong>
        </p>
    </div>
</footer>
</body>
</html>
